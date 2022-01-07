
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobacklight_softc {scalar_t__ sc_pin; } ;
typedef int device_t ;


 struct gpiobacklight_softc* device_get_softc (int ) ;
 int gpio_pin_release (scalar_t__) ;

__attribute__((used)) static int
gpiobacklight_detach(device_t dev)
{
 struct gpiobacklight_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sc_pin)
  gpio_pin_release(sc->sc_pin);

 return (0);
}
