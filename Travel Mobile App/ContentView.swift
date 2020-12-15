//
//  ContentView.swift
//  Travel Mobile App
//
//  Created by William David on 15/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Header()
            Categories()
                .padding(.top, 30)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30){
                    Card1()
                    Card2()
                    Card3()
                }.padding(.leading, 30)
            }.padding(.top, 20)
            VStack(alignment: .leading) {
                Text("Japanese Food")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                HStack(spacing: 20){
                    CardFood1()
                    CardFood2()
                    CardFood3()
                }
                
            }.padding(.top, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
         HStack {
            Text("Discover")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .padding(.leading, 30)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 28, weight: .light))
                .padding(.trailing, 30)
            
        }
    }
}

struct Categories: View {
    var body: some View {
        HStack (spacing: 50){
            VStack(alignment: .leading) {
                Text("Popular")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(Color.orange)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6)
                    .foregroundColor(Color.orange)
                    .padding(.top, -3)
            }
            VStack {
                Text("Rating")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.gray)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6)
                    .foregroundColor(Color.orange)
                    .opacity(0)
                    .padding(.top, -3)
            }
            VStack {
                Text("Popular")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color.gray)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 20, height: 6)
                    .foregroundColor(Color.orange)
                    .opacity(0)
                    .padding(.top, -3)
            }
            Spacer()
        }.padding(.leading, 30)
    }
}

struct Card1: View {
    var body: some View {
        ZStack{
            Image("Mountain1")
                .resizable()
                .frame(width: 250, height: 325)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("Mount Fuji")
                    .foregroundColor(Color.white)
                    .font(.system(size:22, weight: .bold, design:.rounded))
                Text("Fujinomiya, Japan")
                    .foregroundColor(Color.white)
                    .font(.system(size:16, weight: .medium, design:.rounded))
                    .padding(.top,5)
            }
            .offset(x: -40, y:120)
        }
    }
}

struct Card2: View {
    var body: some View {
        ZStack{
            Image("Mountain2")
                .resizable()
                .frame(width: 250, height: 325)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("Mount Fuji")
                    .foregroundColor(Color.white)
                    .font(.system(size:22, weight: .bold, design:.rounded))
                Text("Shibuya-ku, Japan")
                    .foregroundColor(Color.white)
                    .font(.system(size:16, weight: .medium, design:.rounded))
                    .padding(.top,5)
            }
            .offset(x: -40, y:120)
        }
    }
}

struct Card3: View {
    var body: some View {
        ZStack{
            Image("Mountain1")
                .resizable()
                .frame(width: 250, height: 325)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("Mount Fuji")
                    .foregroundColor(Color.white)
                    .font(.system(size:22, weight: .bold, design:.rounded))
                Text("Fujinomiya, Japan")
                    .foregroundColor(Color.white)
                    .font(.system(size:16, weight: .medium, design:.rounded))
                    .padding(.top,5)
            }
            .offset(x: -40, y:120)
        }
    }
}

struct CardFood1: View {
    var body: some View {
        ZStack {
            VStack{
                Text("")
            }
            .frame(width: 95, height: 140)
            .background(Color(#colorLiteral(red: 0.9246019272, green: 0.9246019272, blue: 0.9246019272, alpha: 1)))
            .cornerRadius(20)
            .offset(y: 8)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 20)
            VStack{
                Image("Sushi1")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Sushi")
                    .font(.system(size:16, weight: .bold, design: .rounded
                    )).padding(.top, 10)
            }.frame(width: 100, height: 140)
            .background(Color.white)
            .cornerRadius(20)
        }
    }
}

struct CardFood2: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(#colorLiteral(red: 0.8845345961, green: 0.8845345961, blue: 0.8845345961, alpha: 1)))
            VStack {
                Image("Roman")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("Ramen")
                    .font(.system(size:16, weight: .bold, design: .rounded
                    )).padding(.top, 10)
            }
            
        }.frame(width: 100, height: 140)
    }
}

struct CardFood3: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(#colorLiteral(red: 0.8845345961, green: 0.8845345961, blue: 0.8845345961, alpha: 1)))
            VStack {
                Image("Sushi2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                Text("Sushi")
                    .font(.system(size:16, weight: .bold, design: .rounded
                    )).padding(.top, 10)
            }
            
        }.frame(width: 100, height: 140)
    }
}
