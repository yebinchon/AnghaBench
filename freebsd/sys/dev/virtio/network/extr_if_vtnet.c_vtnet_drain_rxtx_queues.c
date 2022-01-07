
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int dummy; } ;
struct vtnet_softc {int vtnet_act_vq_pairs; struct vtnet_txq* vtnet_txqs; struct vtnet_rxq* vtnet_rxqs; } ;
struct vtnet_rxq {int dummy; } ;


 int vtnet_rxq_free_mbufs (struct vtnet_rxq*) ;
 int vtnet_txq_free_mbufs (struct vtnet_txq*) ;

__attribute__((used)) static void
vtnet_drain_rxtx_queues(struct vtnet_softc *sc)
{
 struct vtnet_rxq *rxq;
 struct vtnet_txq *txq;
 int i;

 for (i = 0; i < sc->vtnet_act_vq_pairs; i++) {
  rxq = &sc->vtnet_rxqs[i];
  vtnet_rxq_free_mbufs(rxq);

  txq = &sc->vtnet_txqs[i];
  vtnet_txq_free_mbufs(txq);
 }
}
