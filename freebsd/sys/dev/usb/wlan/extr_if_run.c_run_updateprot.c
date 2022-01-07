
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct run_softc {int cmdq_task; TYPE_1__* cmdq; int cmdq_store; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;
struct TYPE_2__ {struct ieee80211com* arg0; int func; } ;


 size_t RUN_CMDQ_GET (int *) ;
 int RUN_DEBUG_BEACON ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,size_t) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int run_updateprot_cb ;

__attribute__((used)) static void
run_updateprot(struct ieee80211com *ic)
{
 struct run_softc *sc = ic->ic_softc;
 uint32_t i;

 i = RUN_CMDQ_GET(&sc->cmdq_store);
 RUN_DPRINTF(sc, RUN_DEBUG_BEACON, "cmdq_store=%d\n", i);
 sc->cmdq[i].func = run_updateprot_cb;
 sc->cmdq[i].arg0 = ic;
 ieee80211_runtask(ic, &sc->cmdq_task);
}
