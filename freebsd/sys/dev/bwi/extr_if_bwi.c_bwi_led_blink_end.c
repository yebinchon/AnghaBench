
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {scalar_t__ sc_led_blinking; } ;



__attribute__((used)) static void
bwi_led_blink_end(void *xsc)
{
 struct bwi_softc *sc = xsc;
 sc->sc_led_blinking = 0;
}
