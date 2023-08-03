//
//  ContentView.swift
//  Health4Her welcome page
//
//  Created by Scholar on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var correctAnswer: Bool = false
    
    var body: some View {
        ZStack (alignment: .topLeading){
            
            LinearGradient(gradient: Gradient(colors: [
                Color(uiColor: UIColor(red:255/255, green: 246/255, blue: 250/255, alpha: 1)),
                Color(uiColor: UIColor(red:255/255, green: 153/255, blue: 204/255, alpha: 1)),
            
            ]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            
            
            VStack {
                Spacer()
                Text ("Welcome!")
                  //  .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.208, green: 0.345, blue: 0.511))
                    .font(.custom(FontNames.palatino, size: 35))
                Spacer()
                Text ("  Health4Her")
                   .font(.system(size:60))
                   .fontWeight(.bold)
                  //  .font(.custom(FontNames.arial, size: 50))
                   .foregroundColor(Color(red: 58/255, green: 56/255, blue: 86/255))
                   .multilineTextAlignment(.center)
                   .padding ()
                
                
                Image ("Health4Her logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .frame (width:240, height: 240)
                    .padding()
                
                Text ("‼️⚠️This tool is intended for informational purposes only. Please consult a doctor or other health care professional  for medical advice or information about diagnosis and treatment.‼️")
                    .fontWeight(.bold)
            
                    .padding()
                    .font(.custom(FontNames.palatino, size: 20))
                    .multilineTextAlignment(.center)

                
                Button("Continue") {
                    correctAnswer.toggle()
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.208, green: 0.345, blue: 0.511))
                .font(.custom(FontNames.palatino, size: 35))

                
                
                Group {
            
                if correctAnswer {
                        VStack {
Text ("Simply click through the app to explore. The app displays common symptoms in common areas of the body, as well as provides resources for women to be connected with medical professionals and clinics nearby, along with other information.")
                              //  .font(.title)
                                .foregroundColor(Color.black)
                                .padding()
                                .font(.custom(FontNames.palatino, size: 16))
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FontNames {
  static var americanTypewriter = "American Typewriter"
  static var arial = "Arial"
  static var baskerville = "Baskerville"
  static var chalkduster = "Chalkduster"
  static var courier = "Courier"
  static var georgia = "Georgia"
  static var helvetica = "Helvetica"
  static var palatino = "Palatino"
  static var zapfino = "Zapfino"
}
