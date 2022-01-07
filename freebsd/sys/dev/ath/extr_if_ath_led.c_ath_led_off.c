
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_ledoff; int sc_ledtimer; int sc_ledon; int sc_ledpin; int sc_ah; } ;


 int ath_hal_gpioset (int ,int ,int) ;
 int ath_led_done ;
 int callout_reset (int *,int ,int ,struct ath_softc*) ;

__attribute__((used)) static void
ath_led_off(void *arg)
{
 struct ath_softc *sc = arg;

 ath_hal_gpioset(sc->sc_ah, sc->sc_ledpin, !sc->sc_ledon);
 callout_reset(&sc->sc_ledtimer, sc->sc_ledoff, ath_led_done, sc);
}
