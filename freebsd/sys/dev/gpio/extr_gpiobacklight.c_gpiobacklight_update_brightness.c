
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobacklight_softc {int sc_brightness; scalar_t__ sc_pin; } ;


 int gpio_pin_set_active (scalar_t__,int ) ;

__attribute__((used)) static void
gpiobacklight_update_brightness(struct gpiobacklight_softc *sc)
{

 if (sc->sc_pin)
  gpio_pin_set_active(sc->sc_pin, sc->sc_brightness);
}
