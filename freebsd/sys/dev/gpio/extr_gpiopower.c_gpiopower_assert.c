
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiopower_softc {int sc_rbmask; int sc_pin; } ;
typedef int device_t ;


 int DELAY (int) ;
 int RB_HALT ;
 int RB_POWEROFF ;
 struct gpiopower_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int gpio_pin_set_active (int ,int) ;

__attribute__((used)) static void
gpiopower_assert(device_t dev, int howto)
{
 struct gpiopower_softc *sc;
 int do_assert;

 sc = device_get_softc(dev);
 do_assert = sc->sc_rbmask ? (sc->sc_rbmask & howto) :
     ((howto & RB_HALT) == 0);

 if (!do_assert)
  return;

 if (howto & RB_POWEROFF)
  device_printf(dev, "powering system off\n");
 else if ((howto & RB_HALT) == 0)
  device_printf(dev, "resetting system\n");
 else
  return;

 gpio_pin_set_active(sc->sc_pin, 1);


 DELAY(10000000);
}
