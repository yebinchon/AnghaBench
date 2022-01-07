
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_flags; scalar_t__ sc_tx_timer; int sc_generation; } ;


 int IWM_FLAG_HW_INITED ;
 int IWM_FLAG_SCAN_RUNNING ;
 int IWM_FLAG_STOPPED ;
 int iwm_led_blink_stop (struct iwm_softc*) ;
 int iwm_stop_device (struct iwm_softc*) ;

__attribute__((used)) static void
iwm_stop(struct iwm_softc *sc)
{

 sc->sc_flags &= ~IWM_FLAG_HW_INITED;
 sc->sc_flags |= IWM_FLAG_STOPPED;
 sc->sc_generation++;
 iwm_led_blink_stop(sc);
 sc->sc_tx_timer = 0;
 iwm_stop_device(sc);
 sc->sc_flags &= ~IWM_FLAG_SCAN_RUNNING;
}
