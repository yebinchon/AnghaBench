
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_flags; size_t cmdq_first; struct rtwn_cmdq* cmdq; } ;
struct rtwn_cmdq {int data; int (* func ) (struct rtwn_softc*,int *) ;} ;


 int RTWN_CMDQ_LOCK (struct rtwn_softc*) ;
 int RTWN_CMDQ_SIZE ;
 int RTWN_CMDQ_UNLOCK (struct rtwn_softc*) ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_RUNNING ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int memset (struct rtwn_cmdq*,int ,int) ;
 int stub1 (struct rtwn_softc*,int *) ;

__attribute__((used)) static void
rtwn_cmdq_cb(void *arg, int pending)
{
 struct rtwn_softc *sc = arg;
 struct rtwn_cmdq *item;





 RTWN_LOCK(sc);
 if (!(sc->sc_flags & RTWN_RUNNING)) {
  RTWN_UNLOCK(sc);
  return;
 }

 RTWN_CMDQ_LOCK(sc);
 while (sc->cmdq[sc->cmdq_first].func != ((void*)0)) {
  item = &sc->cmdq[sc->cmdq_first];
  sc->cmdq_first = (sc->cmdq_first + 1) % RTWN_CMDQ_SIZE;
  RTWN_CMDQ_UNLOCK(sc);

  item->func(sc, &item->data);

  RTWN_CMDQ_LOCK(sc);
  memset(item, 0, sizeof (*item));
 }
 RTWN_CMDQ_UNLOCK(sc);
 RTWN_UNLOCK(sc);
}
