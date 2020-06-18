//
//  ContentView.swift
//  chapter30.7
//
//  Created by HEE TAE YANG on 2020/06/18.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isButtonVisible = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $isButtonVisible.animation(
                .linear(duration: 2))) {
                    Text("Show/Hide Button")
            }
            .padding()
            
            if isButtonVisible {
                Button(action: {
                    
                })
                {
//                       Text(isButtonVisible ? "Text" : "")
//                    if isButtonVisible {
//                        Text("Text")
//                    } else {
//                        Text("Text").hidden()
//                    }
                    Text(isVsible(isButton: isButtonVisible))
                    }//.hidden()
                .font(.largeTitle)
//                .transition(.opacity)
                    .transition(AnyTransition.opacity.combined(with: .move(edge: .top)).combined(with: .move(edge: .leading)))
//                    .transition(.fadeAndMove)
//                    .transition(.asymmetric(insertion: .scale, removal: .slide))
            }
        }
    }
}

func isVsible(isButton: Bool)->String {
    if isButton {
        return "Text"
    } else {
        return ""
    }
}

extension AnyTransition {
    static var fadeAndMove: AnyTransition {
        AnyTransition.opacity.combined(with: .move(edge: .top))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
