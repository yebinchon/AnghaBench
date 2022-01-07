
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_led_blink_to; } ;


 int callout_stop (int *) ;
 int iwm_mvm_led_disable (struct iwm_softc*) ;

void
iwm_led_blink_stop(struct iwm_softc *sc)
{
 callout_stop(&sc->sc_led_blink_to);
 iwm_mvm_led_disable(sc);
}
