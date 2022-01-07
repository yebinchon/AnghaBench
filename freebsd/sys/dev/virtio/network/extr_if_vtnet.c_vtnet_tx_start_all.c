
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int dummy; } ;
struct vtnet_softc {int vtnet_act_vq_pairs; struct vtnet_txq* vtnet_txqs; } ;


 int VTNET_CORE_LOCK_ASSERT (struct vtnet_softc*) ;
 int VTNET_TXQ_LOCK (struct vtnet_txq*) ;
 int VTNET_TXQ_UNLOCK (struct vtnet_txq*) ;
 int vtnet_txq_start (struct vtnet_txq*) ;

__attribute__((used)) static void
vtnet_tx_start_all(struct vtnet_softc *sc)
{
 struct vtnet_txq *txq;
 int i;

 VTNET_CORE_LOCK_ASSERT(sc);

 for (i = 0; i < sc->vtnet_act_vq_pairs; i++) {
  txq = &sc->vtnet_txqs[i];

  VTNET_TXQ_LOCK(txq);
  vtnet_txq_start(txq);
  VTNET_TXQ_UNLOCK(txq);
 }
}
