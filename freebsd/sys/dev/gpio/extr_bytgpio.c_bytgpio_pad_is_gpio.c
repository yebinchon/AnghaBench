
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bytgpio_softc {scalar_t__* sc_pad_funcs; TYPE_1__* sc_pinpad_map; } ;
struct TYPE_2__ {scalar_t__ pad_func; } ;


 scalar_t__ PADCONF_FUNC_ANY ;

__attribute__((used)) static bool
bytgpio_pad_is_gpio(struct bytgpio_softc *sc, int pin)
{
 if ((sc->sc_pinpad_map[pin].pad_func == PADCONF_FUNC_ANY) ||
     (sc->sc_pad_funcs[pin] == sc->sc_pinpad_map[pin].pad_func))
  return (1);
 else
  return (0);
}
