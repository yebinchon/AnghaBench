
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwi_softc {int sc_blinking; int sc_ledoff; int sc_ledtimer; int sc_ledpin; } ;


 int callout_reset (int *,int,int ,struct iwi_softc*) ;
 int iwi_led_off ;
 int iwi_read_event (struct iwi_softc*) ;
 int iwi_toggle_event (int ) ;
 int iwi_write_event (struct iwi_softc*,int ) ;

__attribute__((used)) static void
iwi_led_blink(struct iwi_softc *sc, int on, int off)
{
 uint32_t v;

 v = iwi_read_event(sc);
 v |= sc->sc_ledpin;
 iwi_write_event(sc, iwi_toggle_event(v));
 sc->sc_blinking = 1;
 sc->sc_ledoff = off;
 callout_reset(&sc->sc_ledtimer, on, iwi_led_off, sc);
}
