
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_flags; int sc_ic; int last_physt; int cur_bcnq_id; scalar_t__ thcal_temp; scalar_t__ fwver; scalar_t__ sc_tx_timer; int sc_watchdog_to; } ;


 int RTWN_FW_LOADED ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_RUNNING ;
 int RTWN_STARTED ;
 int RTWN_TEMP_MEASURED ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int RTWN_VAP_ID_INVALID ;
 int bzero (int *,int) ;
 int callout_stop (int *) ;
 int ieee80211_tx_watchdog_stop (int *) ;
 int rtwn_abort_xfers (struct rtwn_softc*) ;
 int rtwn_drain_mbufq (struct rtwn_softc*) ;
 int rtwn_power_off (struct rtwn_softc*) ;
 int rtwn_reset_lists (struct rtwn_softc*,int *) ;

__attribute__((used)) static void
rtwn_stop(struct rtwn_softc *sc)
{

 RTWN_LOCK(sc);
 if (!(sc->sc_flags & RTWN_STARTED)) {
  RTWN_UNLOCK(sc);
  return;
 }


 callout_stop(&sc->sc_watchdog_to);
 sc->sc_tx_timer = 0;

 sc->sc_flags &= ~(RTWN_STARTED | RTWN_RUNNING | RTWN_FW_LOADED);
 sc->sc_flags &= ~RTWN_TEMP_MEASURED;
 sc->fwver = 0;
 sc->thcal_temp = 0;
 sc->cur_bcnq_id = RTWN_VAP_ID_INVALID;
 bzero(&sc->last_physt, sizeof(sc->last_physt));





 rtwn_abort_xfers(sc);
 rtwn_drain_mbufq(sc);
 rtwn_power_off(sc);
 rtwn_reset_lists(sc, ((void*)0));
 RTWN_UNLOCK(sc);
}
