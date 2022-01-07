
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_sta; int ic_vaps; } ;
struct run_softc {int rvp_cnt; scalar_t__ ratectl_run; int ratectl_ch; struct ieee80211com sc_ic; } ;
struct ieee80211vap {scalar_t__ iv_opmode; } ;


 scalar_t__ IEEE80211_M_STA ;
 int RUN_LOCK (struct run_softc*) ;
 scalar_t__ RUN_RATECTL_OFF ;
 int RUN_UNLOCK (struct run_softc*) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int hz ;
 int ieee80211_iterate_nodes (int *,int ,struct run_softc*) ;
 int run_drain_fifo (struct run_softc*) ;
 int run_iter_func ;
 int run_ratectl_to ;
 int run_reset_livelock (struct run_softc*) ;
 int usb_callout_reset (int *,int ,int ,struct run_softc*) ;

__attribute__((used)) static void
run_ratectl_cb(void *arg, int pending)
{
 struct run_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);

 if (vap == ((void*)0))
  return;

 if (sc->rvp_cnt > 1 || vap->iv_opmode != IEEE80211_M_STA) {







  RUN_LOCK(sc);
  run_reset_livelock(sc);

  run_drain_fifo(sc);
  RUN_UNLOCK(sc);
 }

 ieee80211_iterate_nodes(&ic->ic_sta, run_iter_func, sc);

 RUN_LOCK(sc);
 if(sc->ratectl_run != RUN_RATECTL_OFF)
  usb_callout_reset(&sc->ratectl_ch, hz, run_ratectl_to, sc);
 RUN_UNLOCK(sc);
}
