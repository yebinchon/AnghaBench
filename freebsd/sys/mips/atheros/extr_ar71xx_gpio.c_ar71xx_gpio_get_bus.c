
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar71xx_gpio_softc {int busdev; } ;
typedef int device_t ;


 struct ar71xx_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static device_t
ar71xx_gpio_get_bus(device_t dev)
{
 struct ar71xx_gpio_softc *sc;

 sc = device_get_softc(dev);

 return (sc->busdev);
}
