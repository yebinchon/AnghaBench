
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpio_softc {int sc_busdev; } ;
typedef int device_t ;


 struct amdgpio_softc* device_get_softc (int ) ;
 int dprintf (char*,int ) ;

__attribute__((used)) static device_t
amdgpio_get_bus(device_t dev)
{
 struct amdgpio_softc *sc;

 sc = device_get_softc(dev);

 dprintf("busdev %p\n", sc->sc_busdev);
 return (sc->sc_busdev);
}
