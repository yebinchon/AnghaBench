
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {TYPE_1__* sc_hwmap; scalar_t__ sc_blinking; int sc_ledevent; } ;
struct TYPE_2__ {int ledoff; int ledon; } ;


 int ath_led_blink (struct ath_softc*,int ,int ) ;
 int ticks ;

void
ath_led_event(struct ath_softc *sc, int rix)
{
 sc->sc_ledevent = ticks;
 if (sc->sc_blinking)
  return;
 ath_led_blink(sc, sc->sc_hwmap[rix].ledon, sc->sc_hwmap[rix].ledoff);
}
