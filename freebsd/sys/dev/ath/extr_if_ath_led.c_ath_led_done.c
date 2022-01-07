
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {scalar_t__ sc_blinking; } ;



__attribute__((used)) static void
ath_led_done(void *arg)
{
 struct ath_softc *sc = arg;

 sc->sc_blinking = 0;
}
