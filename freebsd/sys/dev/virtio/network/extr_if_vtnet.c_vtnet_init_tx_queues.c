
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {scalar_t__ vtntx_watchdog; } ;
struct vtnet_softc {int vtnet_act_vq_pairs; struct vtnet_txq* vtnet_txqs; } ;



__attribute__((used)) static int
vtnet_init_tx_queues(struct vtnet_softc *sc)
{
 struct vtnet_txq *txq;
 int i;

 for (i = 0; i < sc->vtnet_act_vq_pairs; i++) {
  txq = &sc->vtnet_txqs[i];
  txq->vtntx_watchdog = 0;
 }

 return (0);
}
