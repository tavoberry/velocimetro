//: Minireto Velocimetro

import UIKit

enum Velocidades : Int{
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init(velocidadInicial : Int) {
        switch velocidadInicial{
        case 0 :
            self = .apagado
        case 1 :
            self = .velocidadBaja
        case 2:
            self = .velocidadMedia
        case 3:
            self = .velocidadAlta
        default:
            self = .apagado
        }
        
    }

    class Auto {
        var velocidad : Velocidades(0)
        
        init (){
            self.velocidad = .apagado
        }
        
        func cambioDeVelocidad(actual : Int, velocidadEnCadena : String)->(Int,String){
            switch actual{
            case 0:
                return (1,"Velocidad Baja")
            case 1:
                return (2,"Velocidad Media")
            case 2:
                return (3,"Velocidad Alta")
            case 3:
                return (2,"Velocidad Media")
            default:
                return (1,"Velocidad Baja")
                
            }
        }
    }
    
    
    var auto = Auto()
    
    for i in 0...20{
        print (auto.cambioDeVelocidad(i))
    }

