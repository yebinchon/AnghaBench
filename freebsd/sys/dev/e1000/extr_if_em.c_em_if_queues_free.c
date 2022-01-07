
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring {struct em_tx_queue* tx_rsq; } ;
struct em_tx_queue {struct tx_ring txr; } ;
struct em_rx_queue {struct tx_ring txr; } ;
struct adapter {int tx_num_queues; struct em_tx_queue* mta; struct em_tx_queue* rx_queues; struct em_tx_queue* tx_queues; } ;
typedef int if_ctx_t ;


 int M_DEVBUF ;
 int em_release_hw_control (struct adapter*) ;
 int free (struct em_tx_queue*,int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
em_if_queues_free(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct em_tx_queue *tx_que = adapter->tx_queues;
 struct em_rx_queue *rx_que = adapter->rx_queues;

 if (tx_que != ((void*)0)) {
  for (int i = 0; i < adapter->tx_num_queues; i++, tx_que++) {
   struct tx_ring *txr = &tx_que->txr;
   if (txr->tx_rsq == ((void*)0))
    break;

   free(txr->tx_rsq, M_DEVBUF);
   txr->tx_rsq = ((void*)0);
  }
  free(adapter->tx_queues, M_DEVBUF);
  adapter->tx_queues = ((void*)0);
 }

 if (rx_que != ((void*)0)) {
  free(adapter->rx_queues, M_DEVBUF);
  adapter->rx_queues = ((void*)0);
 }

 em_release_hw_control(adapter);

 if (adapter->mta != ((void*)0)) {
  free(adapter->mta, M_DEVBUF);
 }
}
