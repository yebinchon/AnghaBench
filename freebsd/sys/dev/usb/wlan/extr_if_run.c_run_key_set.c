
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct run_softc {int cmdq_key_set; int cmdq_task; TYPE_1__* cmdq; int cmdq_store; } ;
struct ieee80211vap {scalar_t__ iv_opmode; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;
struct ieee80211_key {int wk_macaddr; } ;
struct TYPE_2__ {int mac; struct ieee80211_key* k; struct ieee80211vap* arg1; int * arg0; int func; } ;


 int IEEE80211_ADDR_COPY (int ,int ) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 size_t RUN_CMDQ_GET (int *) ;
 int RUN_CMDQ_GO ;
 int RUN_DEBUG_KEY ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,size_t) ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_UNLOCK (struct run_softc*) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int run_key_set_cb ;

__attribute__((used)) static int
run_key_set(struct ieee80211vap *vap, struct ieee80211_key *k)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct run_softc *sc = ic->ic_softc;
 uint32_t i;

 i = RUN_CMDQ_GET(&sc->cmdq_store);
 RUN_DPRINTF(sc, RUN_DEBUG_KEY, "cmdq_store=%d\n", i);
 sc->cmdq[i].func = run_key_set_cb;
 sc->cmdq[i].arg0 = ((void*)0);
 sc->cmdq[i].arg1 = vap;
 sc->cmdq[i].k = k;
 IEEE80211_ADDR_COPY(sc->cmdq[i].mac, k->wk_macaddr);
 ieee80211_runtask(ic, &sc->cmdq_task);





 if (vap->iv_opmode == IEEE80211_M_HOSTAP) {
  RUN_LOCK(sc);
  sc->cmdq_key_set = RUN_CMDQ_GO;
  RUN_UNLOCK(sc);
 }

 return (1);
}
