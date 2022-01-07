
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring {struct ix_tx_queue* tx_rsq; } ;
struct ix_tx_queue {struct tx_ring txr; } ;
struct adapter {int num_tx_queues; struct ix_tx_queue* rx_queues; struct ix_tx_queue* tx_queues; } ;
typedef int if_ctx_t ;


 int M_DEVBUF ;
 int free (struct ix_tx_queue*,int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
ixv_if_queues_free(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ix_tx_queue *que = adapter->tx_queues;
 int i;

 if (que == ((void*)0))
  goto free;

 for (i = 0; i < adapter->num_tx_queues; i++, que++) {
  struct tx_ring *txr = &que->txr;
  if (txr->tx_rsq == ((void*)0))
   break;

  free(txr->tx_rsq, M_DEVBUF);
  txr->tx_rsq = ((void*)0);
 }
 if (adapter->tx_queues != ((void*)0))
  free(adapter->tx_queues, M_DEVBUF);
free:
 if (adapter->rx_queues != ((void*)0))
  free(adapter->rx_queues, M_DEVBUF);
 adapter->tx_queues = ((void*)0);
 adapter->rx_queues = ((void*)0);
}
