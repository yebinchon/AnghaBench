
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpio_softc {TYPE_1__* sc_gpio_pins; int ** sc_res; } ;
struct TYPE_2__ {int gp_pin; scalar_t__ gp_caps; } ;


 int dprintf (char*,int) ;

__attribute__((used)) static bool
amdgpio_valid_pin(struct amdgpio_softc *sc, int pin)
{
 dprintf("pin %d\n", pin);
 if (sc->sc_res[0] == ((void*)0))
  return (0);

 if ((sc->sc_gpio_pins[pin].gp_pin == pin) &&
  (sc->sc_gpio_pins[pin].gp_caps != 0))
  return (1);

 return (0);
}
