
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_led_blink_to; } ;


 int callout_reset (int *,int ,int ,struct iwm_softc*) ;
 int iwm_led_blink_timeout ;

void
iwm_led_blink_start(struct iwm_softc *sc)
{
 callout_reset(&sc->sc_led_blink_to, 0, iwm_led_blink_timeout, sc);
}
