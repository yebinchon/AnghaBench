
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct run_vap {int * beacon_mbuf; } ;
struct run_softc {int cmdq_task; TYPE_1__* cmdq; int cmdq_store; } ;
struct ieee80211_beacon_offsets {int bo_flags; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; struct ieee80211_beacon_offsets iv_bcn_off; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;
struct ieee80211_node {int dummy; } ;
struct TYPE_2__ {struct ieee80211vap* arg0; int func; } ;





 size_t RUN_CMDQ_GET (int *) ;
 int RUN_DEBUG_BEACON ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,size_t) ;
 struct run_vap* RUN_VAP (struct ieee80211vap*) ;
 int * ieee80211_beacon_alloc (struct ieee80211_node*) ;
 int ieee80211_beacon_update (struct ieee80211_node*,int *,int) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int run_update_beacon_cb ;
 int run_updateprot (struct ieee80211com*) ;
 int run_updateslot (struct ieee80211com*) ;
 int setbit (int ,int) ;

__attribute__((used)) static void
run_update_beacon(struct ieee80211vap *vap, int item)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_beacon_offsets *bo = &vap->iv_bcn_off;
 struct ieee80211_node *ni = vap->iv_bss;
 struct run_softc *sc = ic->ic_softc;
 struct run_vap *rvp = RUN_VAP(vap);
 int mcast = 0;
 uint32_t i;

 switch (item) {
 case 130:
  run_updateslot(ic);
  break;
 case 129:
  run_updateprot(ic);
  break;
 case 128:
  mcast = 1;
  break;
 default:
  break;
 }

 setbit(bo->bo_flags, item);
 if (rvp->beacon_mbuf == ((void*)0)) {
  rvp->beacon_mbuf = ieee80211_beacon_alloc(ni);
  if (rvp->beacon_mbuf == ((void*)0))
   return;
 }
 ieee80211_beacon_update(ni, rvp->beacon_mbuf, mcast);

 i = RUN_CMDQ_GET(&sc->cmdq_store);
 RUN_DPRINTF(sc, RUN_DEBUG_BEACON, "cmdq_store=%d\n", i);
 sc->cmdq[i].func = run_update_beacon_cb;
 sc->cmdq[i].arg0 = vap;
 ieee80211_runtask(ic, &sc->cmdq_task);

 return;
}
