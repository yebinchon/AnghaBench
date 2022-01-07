
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int * vtntx_tq; } ;
struct vtnet_softc {int vtnet_max_vq_pairs; struct vtnet_txq* vtnet_txqs; struct vtnet_rxq* vtnet_rxqs; } ;
struct vtnet_rxq {int * vtnrx_tq; } ;


 int taskqueue_free (int *) ;

__attribute__((used)) static void
vtnet_free_taskqueues(struct vtnet_softc *sc)
{
 struct vtnet_rxq *rxq;
 struct vtnet_txq *txq;
 int i;

 for (i = 0; i < sc->vtnet_max_vq_pairs; i++) {
  rxq = &sc->vtnet_rxqs[i];
  if (rxq->vtnrx_tq != ((void*)0)) {
   taskqueue_free(rxq->vtnrx_tq);
   rxq->vtnrx_tq = ((void*)0);
  }

  txq = &sc->vtnet_txqs[i];
  if (txq->vtntx_tq != ((void*)0)) {
   taskqueue_free(txq->vtntx_tq);
   txq->vtntx_tq = ((void*)0);
  }
 }
}
