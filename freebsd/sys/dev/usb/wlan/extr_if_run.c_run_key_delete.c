
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct run_softc {int cmdq_task; TYPE_1__* cmdq; int cmdq_store; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;
struct ieee80211_key {int wk_pad; int wk_keyix; int wk_flags; } ;
struct TYPE_2__ {struct ieee80211_key key; struct run_softc* arg1; int * arg0; int func; } ;


 size_t RUN_CMDQ_GET (int *) ;
 int RUN_DEBUG_KEY ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,size_t) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int run_key_delete_cb ;

__attribute__((used)) static int
run_key_delete(struct ieee80211vap *vap, struct ieee80211_key *k)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct run_softc *sc = ic->ic_softc;
 struct ieee80211_key *k0;
 uint32_t i;







 i = RUN_CMDQ_GET(&sc->cmdq_store);
 RUN_DPRINTF(sc, RUN_DEBUG_KEY, "cmdq_store=%d\n", i);
 sc->cmdq[i].func = run_key_delete_cb;
 sc->cmdq[i].arg0 = ((void*)0);
 sc->cmdq[i].arg1 = sc;
 k0 = &sc->cmdq[i].key;
 k0->wk_flags = k->wk_flags;
 k0->wk_keyix = k->wk_keyix;

 k0->wk_pad = k->wk_pad;
 ieee80211_runtask(ic, &sc->cmdq_task);
 return (1);

}
