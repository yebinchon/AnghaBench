
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct run_vap {int rvp_id; int * beacon_mbuf; } ;
struct run_softc {int ratectl_run; int rvp_bmap; int rvp_cnt; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;


 int M_80211_VAP ;
 int RT2860_BCN_BASE (int) ;
 int RT2860_SKEY (int,int ) ;
 int RUN_DEBUG_STATE ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,struct ieee80211vap*,int,int,int ) ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_UNLOCK (struct run_softc*) ;
 struct run_vap* RUN_VAP (struct ieee80211vap*) ;
 int free (struct run_vap*,int ) ;
 int ieee80211_ratectl_deinit (struct ieee80211vap*) ;
 int ieee80211_vap_detach (struct ieee80211vap*) ;
 int m_freem (int *) ;
 int run_set_region_4 (struct run_softc*,int ,int ,int) ;

__attribute__((used)) static void
run_vap_delete(struct ieee80211vap *vap)
{
 struct run_vap *rvp = RUN_VAP(vap);
 struct ieee80211com *ic;
 struct run_softc *sc;
 uint8_t rvp_id;

 if (vap == ((void*)0))
  return;

 ic = vap->iv_ic;
 sc = ic->ic_softc;

 RUN_LOCK(sc);

 m_freem(rvp->beacon_mbuf);
 rvp->beacon_mbuf = ((void*)0);

 rvp_id = rvp->rvp_id;
 sc->ratectl_run &= ~(1 << rvp_id);
 sc->rvp_bmap &= ~(1 << rvp_id);
 run_set_region_4(sc, RT2860_SKEY(rvp_id, 0), 0, 128);
 run_set_region_4(sc, RT2860_BCN_BASE(rvp_id), 0, 512);
 --sc->rvp_cnt;

 RUN_DPRINTF(sc, RUN_DEBUG_STATE,
     "vap=%p rvp_id=%d bmap=%x rvp_cnt=%d\n",
     vap, rvp_id, sc->rvp_bmap, sc->rvp_cnt);

 RUN_UNLOCK(sc);

 ieee80211_ratectl_deinit(vap);
 ieee80211_vap_detach(vap);
 free(rvp, M_80211_VAP);
}
