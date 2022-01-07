
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct malo_softc {scalar_t__ malo_timer; TYPE_1__* malo_txq; } ;
struct TYPE_2__ {int active; } ;


 int MALO_LOCK (struct malo_softc*) ;
 int MALO_NUM_TX_QUEUES ;
 int MALO_UNLOCK (struct malo_softc*) ;
 int STAILQ_EMPTY (int *) ;
 int malo_start (struct malo_softc*) ;
 scalar_t__ malo_tx_processq (struct malo_softc*,TYPE_1__*) ;

__attribute__((used)) static void
malo_tx_proc(void *arg, int npending)
{
 struct malo_softc *sc = arg;
 int i, nreaped;




 nreaped = 0;
 MALO_LOCK(sc);
 for (i = 0; i < MALO_NUM_TX_QUEUES; i++) {
  if (!STAILQ_EMPTY(&sc->malo_txq[i].active))
   nreaped += malo_tx_processq(sc, &sc->malo_txq[i]);
 }

 if (nreaped != 0) {
  sc->malo_timer = 0;
  malo_start(sc);
 }
 MALO_UNLOCK(sc);
}
