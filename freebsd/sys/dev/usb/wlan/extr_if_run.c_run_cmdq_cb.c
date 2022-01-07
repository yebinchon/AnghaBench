
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct run_softc {size_t cmdq_exec; scalar_t__ cmdq_run; TYPE_1__* cmdq; } ;
struct TYPE_3__ {int (* func ) (TYPE_1__*) ;struct TYPE_3__* arg0; } ;


 scalar_t__ RUN_CMDQ_GO ;
 size_t RUN_CMDQ_MASQ ;
 int RUN_DEBUG_CMD ;
 int RUN_DPRINTF (struct run_softc*,int ,char*,size_t,int) ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_UNLOCK (struct run_softc*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static void
run_cmdq_cb(void *arg, int pending)
{
 struct run_softc *sc = arg;
 uint8_t i;


 RUN_LOCK(sc);
 for (i = sc->cmdq_exec; sc->cmdq[i].func && pending;
     i = sc->cmdq_exec, pending--) {
  RUN_DPRINTF(sc, RUN_DEBUG_CMD, "cmdq_exec=%d pending=%d\n",
      i, pending);
  if (sc->cmdq_run == RUN_CMDQ_GO) {




   if (sc->cmdq[i].arg0)
    sc->cmdq[i].func(sc->cmdq[i].arg0);
   else
    sc->cmdq[i].func(&sc->cmdq[i]);
  }
  sc->cmdq[i].arg0 = ((void*)0);
  sc->cmdq[i].func = ((void*)0);
  sc->cmdq_exec++;
  sc->cmdq_exec &= RUN_CMDQ_MASQ;
 }
 RUN_UNLOCK(sc);
}
