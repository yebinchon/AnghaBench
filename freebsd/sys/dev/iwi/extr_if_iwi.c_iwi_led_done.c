
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {scalar_t__ sc_blinking; } ;



__attribute__((used)) static void
iwi_led_done(void *arg)
{
 struct iwi_softc *sc = arg;

 sc->sc_blinking = 0;
}
