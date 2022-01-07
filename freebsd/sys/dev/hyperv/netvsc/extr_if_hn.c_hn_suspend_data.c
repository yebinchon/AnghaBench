
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_tx_ring {int hn_suspended; int hn_txeof_task; int hn_tx_taskq; int hn_tx_task; int hn_tx_lock; } ;
struct hn_softc {int hn_tx_ring_inuse; struct hn_tx_ring* hn_tx_ring; int hn_rx_ring_inuse; int hn_prichan; } ;


 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int hn_disable_rx (struct hn_softc*) ;
 int hn_drain_rxtx (struct hn_softc*,int ) ;
 scalar_t__ hn_tx_ring_pending (struct hn_tx_ring*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pause (char*,int) ;
 int taskqueue_drain (int ,int *) ;
 int vmbus_chan_is_revoked (int ) ;

__attribute__((used)) static void
hn_suspend_data(struct hn_softc *sc)
{
 struct hn_tx_ring *txr;
 int i;

 HN_LOCK_ASSERT(sc);




 for (i = 0; i < sc->hn_tx_ring_inuse; ++i) {
  txr = &sc->hn_tx_ring[i];

  mtx_lock(&txr->hn_tx_lock);
  txr->hn_suspended = 1;
  mtx_unlock(&txr->hn_tx_lock);
  while (hn_tx_ring_pending(txr) &&
      !vmbus_chan_is_revoked(sc->hn_prichan))
   pause("hnwtx", 1 );
 }




 hn_disable_rx(sc);




 hn_drain_rxtx(sc, sc->hn_rx_ring_inuse);
 for (i = 0; i < sc->hn_tx_ring_inuse; ++i) {
  txr = &sc->hn_tx_ring[i];

  taskqueue_drain(txr->hn_tx_taskq, &txr->hn_tx_task);
  taskqueue_drain(txr->hn_tx_taskq, &txr->hn_txeof_task);
 }
}
