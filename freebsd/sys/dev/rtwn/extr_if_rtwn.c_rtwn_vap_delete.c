
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_vap {int tsf_sync_adhoc; int tsf_sync_adhoc_task; int id; int * bcn_mbuf; } ;
struct rtwn_softc {int sc_flags; } ;
struct ieee80211vap {scalar_t__ iv_opmode; int iv_nstate_task; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_parent_task; struct rtwn_softc* ic_softc; } ;


 scalar_t__ IEEE80211_M_IBSS ;
 int M_80211_VAP ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_RUNNING ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int callout_drain (int *) ;
 int free (struct rtwn_vap*,int ) ;
 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int ieee80211_ratectl_deinit (struct ieee80211vap*) ;
 int ieee80211_stop (struct ieee80211vap*) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;
 int m_freem (int *) ;
 int rtwn_reset_lists (struct rtwn_softc*,struct ieee80211vap*) ;
 int rtwn_rxfilter_update (struct rtwn_softc*) ;
 int rtwn_set_ic_opmode (struct rtwn_softc*) ;
 int rtwn_vap_decrement_counters (struct rtwn_softc*,scalar_t__,int ) ;

__attribute__((used)) static void
rtwn_vap_delete(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct rtwn_softc *sc = ic->ic_softc;
 struct rtwn_vap *uvp = RTWN_VAP(vap);


 ieee80211_stop(vap);
 ieee80211_draintask(ic, &vap->iv_nstate_task);
 ieee80211_draintask(ic, &ic->ic_parent_task);

 RTWN_LOCK(sc);

 rtwn_reset_lists(sc, vap);
 if (uvp->bcn_mbuf != ((void*)0))
  m_freem(uvp->bcn_mbuf);
 rtwn_vap_decrement_counters(sc, vap->iv_opmode, uvp->id);
 rtwn_set_ic_opmode(sc);
 if (sc->sc_flags & RTWN_RUNNING)
  rtwn_rxfilter_update(sc);
 RTWN_UNLOCK(sc);

 if (vap->iv_opmode == IEEE80211_M_IBSS) {
  ieee80211_draintask(ic, &uvp->tsf_sync_adhoc_task);
  callout_drain(&uvp->tsf_sync_adhoc);
 }

 ieee80211_ratectl_deinit(vap);
 ieee80211_vap_detach(vap);
 free(uvp, M_80211_VAP);
}
