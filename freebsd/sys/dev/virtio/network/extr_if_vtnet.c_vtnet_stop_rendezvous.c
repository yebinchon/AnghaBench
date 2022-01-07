
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int dummy; } ;
struct vtnet_softc {int vtnet_max_vq_pairs; struct vtnet_txq* vtnet_txqs; struct vtnet_rxq* vtnet_rxqs; } ;
struct vtnet_rxq {int dummy; } ;


 int VTNET_RXQ_LOCK (struct vtnet_rxq*) ;
 int VTNET_RXQ_UNLOCK (struct vtnet_rxq*) ;
 int VTNET_TXQ_LOCK (struct vtnet_txq*) ;
 int VTNET_TXQ_UNLOCK (struct vtnet_txq*) ;

__attribute__((used)) static void
vtnet_stop_rendezvous(struct vtnet_softc *sc)
{
 struct vtnet_rxq *rxq;
 struct vtnet_txq *txq;
 int i;







 for (i = 0; i < sc->vtnet_max_vq_pairs; i++) {
  rxq = &sc->vtnet_rxqs[i];
  VTNET_RXQ_LOCK(rxq);
  VTNET_RXQ_UNLOCK(rxq);

  txq = &sc->vtnet_txqs[i];
  VTNET_TXQ_LOCK(txq);
  VTNET_TXQ_UNLOCK(txq);
 }
}
