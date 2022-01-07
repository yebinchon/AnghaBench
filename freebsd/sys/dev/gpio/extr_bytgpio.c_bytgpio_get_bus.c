
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytgpio_softc {int sc_busdev; } ;
typedef int device_t ;


 struct bytgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static device_t
bytgpio_get_bus(device_t dev)
{
 struct bytgpio_softc *sc;

 sc = device_get_softc(dev);

 return (sc->sc_busdev);
}
