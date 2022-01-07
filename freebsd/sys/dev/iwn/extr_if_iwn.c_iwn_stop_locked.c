
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int sc_flags; int calib_to; int scan_timeout; int watchdog_to; scalar_t__ sc_tx_timer; scalar_t__ sc_is_scanning; } ;


 int IWN_FLAG_RUNNING ;
 int IWN_LOCK_ASSERT (struct iwn_softc*) ;
 int callout_stop (int *) ;
 int iwn_hw_stop (struct iwn_softc*) ;

__attribute__((used)) static void
iwn_stop_locked(struct iwn_softc *sc)
{

 IWN_LOCK_ASSERT(sc);

 if (!(sc->sc_flags & IWN_FLAG_RUNNING))
  return;

 sc->sc_is_scanning = 0;
 sc->sc_tx_timer = 0;
 callout_stop(&sc->watchdog_to);
 callout_stop(&sc->scan_timeout);
 callout_stop(&sc->calib_to);
 sc->sc_flags &= ~IWN_FLAG_RUNNING;


 iwn_hw_stop(sc);
}
