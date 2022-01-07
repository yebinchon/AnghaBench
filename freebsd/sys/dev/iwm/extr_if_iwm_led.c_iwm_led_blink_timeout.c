
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {scalar_t__ sc_attached; int sc_led_blink_to; } ;


 int callout_reset (int *,int,void (*) (void*),struct iwm_softc*) ;
 int hz ;
 int iwm_mvm_led_disable (struct iwm_softc*) ;
 int iwm_mvm_led_enable (struct iwm_softc*) ;
 scalar_t__ iwm_mvm_led_is_enabled (struct iwm_softc*) ;

__attribute__((used)) static void
iwm_led_blink_timeout(void *arg)
{
 struct iwm_softc *sc = arg;

 if (sc->sc_attached == 0)
  return;

 if (iwm_mvm_led_is_enabled(sc))
  iwm_mvm_led_disable(sc);
 else
  iwm_mvm_led_enable(sc);

 callout_reset(&sc->sc_led_blink_to, (200 * hz) / 1000,
     iwm_led_blink_timeout, sc);
}
