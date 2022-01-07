
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chvgpio_softc {int sc_ngroups; int* sc_pins; } ;


 int EINVAL ;

__attribute__((used)) static int
chvgpio_valid_pin(struct chvgpio_softc *sc, int pin)
{
 if (pin < 0)
  return EINVAL;
 if ((pin / 15) >= sc->sc_ngroups)
  return EINVAL;
 if ((pin % 15) >= sc->sc_pins[pin / 15])
  return EINVAL;
 return (0);
}
