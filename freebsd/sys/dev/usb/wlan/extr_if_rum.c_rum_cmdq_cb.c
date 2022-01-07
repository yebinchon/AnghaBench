
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_softc {size_t cmdq_first; struct rum_cmdq* cmdq; } ;
struct rum_cmdq {int rvp_id; int data; int (* func ) (struct rum_softc*,int *,int ) ;} ;


 int RUM_CMDQ_LOCK (struct rum_softc*) ;
 int RUM_CMDQ_SIZE ;
 int RUM_CMDQ_UNLOCK (struct rum_softc*) ;
 int RUM_LOCK (struct rum_softc*) ;
 int RUM_UNLOCK (struct rum_softc*) ;
 int memset (struct rum_cmdq*,int ,int) ;
 int stub1 (struct rum_softc*,int *,int ) ;

__attribute__((used)) static void
rum_cmdq_cb(void *arg, int pending)
{
 struct rum_softc *sc = arg;
 struct rum_cmdq *rc;

 RUM_CMDQ_LOCK(sc);
 while (sc->cmdq[sc->cmdq_first].func != ((void*)0)) {
  rc = &sc->cmdq[sc->cmdq_first];
  RUM_CMDQ_UNLOCK(sc);

  RUM_LOCK(sc);
  rc->func(sc, &rc->data, rc->rvp_id);
  RUM_UNLOCK(sc);

  RUM_CMDQ_LOCK(sc);
  memset(rc, 0, sizeof (*rc));
  sc->cmdq_first = (sc->cmdq_first + 1) % RUM_CMDQ_SIZE;
 }
 RUM_CMDQ_UNLOCK(sc);
}
