
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpio_softc {int sc_res; scalar_t__ sc_busdev; } ;
typedef int device_t ;


 int AMDGPIO_LOCK_DESTROY (struct amdgpio_softc*) ;
 int amdgpio_spec ;
 int bus_release_resources (int ,int ,int ) ;
 struct amdgpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;

__attribute__((used)) static int
amdgpio_detach(device_t dev)
{
 struct amdgpio_softc *sc;
 sc = device_get_softc(dev);

 if (sc->sc_busdev)
  gpiobus_detach_bus(dev);

 bus_release_resources(dev, amdgpio_spec, sc->sc_res);

 AMDGPIO_LOCK_DESTROY(sc);

 return (0);
}
