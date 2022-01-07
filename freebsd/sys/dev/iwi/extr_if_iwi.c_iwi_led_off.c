
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwi_softc {int sc_ledoff; int sc_ledtimer; int sc_ledpin; } ;


 int callout_reset (int *,int ,int ,struct iwi_softc*) ;
 int iwi_led_done ;
 int iwi_read_event (struct iwi_softc*) ;
 int iwi_toggle_event (int ) ;
 int iwi_write_event (struct iwi_softc*,int ) ;

__attribute__((used)) static void
iwi_led_off(void *arg)
{
 struct iwi_softc *sc = arg;
 uint32_t v;

 v = iwi_read_event(sc);
 v &= ~sc->sc_ledpin;
 iwi_write_event(sc, iwi_toggle_event(v));
 callout_reset(&sc->sc_ledtimer, sc->sc_ledoff, iwi_led_done, sc);
}
