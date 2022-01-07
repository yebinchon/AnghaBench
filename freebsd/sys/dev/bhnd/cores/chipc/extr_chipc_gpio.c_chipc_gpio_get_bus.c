
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_gpio_softc {int gpiobus; } ;
typedef int device_t ;


 struct chipc_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static device_t
chipc_gpio_get_bus(device_t dev)
{
 struct chipc_gpio_softc *sc = device_get_softc(dev);

 return (sc->gpiobus);
}
