
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int vtntx_br; struct vtnet_softc* vtntx_sc; } ;
struct vtnet_softc {int vtnet_ifp; } ;


 int VTNET_TXQ_LOCK (struct vtnet_txq*) ;
 int VTNET_TXQ_UNLOCK (struct vtnet_txq*) ;
 int drbr_empty (int ,int ) ;
 int vtnet_txq_mq_start_locked (struct vtnet_txq*,int *) ;

__attribute__((used)) static void
vtnet_txq_tq_deferred(void *xtxq, int pending)
{
 struct vtnet_softc *sc;
 struct vtnet_txq *txq;

 txq = xtxq;
 sc = txq->vtntx_sc;

 VTNET_TXQ_LOCK(txq);
 if (!drbr_empty(sc->vtnet_ifp, txq->vtntx_br))
  vtnet_txq_mq_start_locked(txq, ((void*)0));
 VTNET_TXQ_UNLOCK(txq);
}
