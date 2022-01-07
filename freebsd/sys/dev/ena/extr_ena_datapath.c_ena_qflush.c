
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ena_ring {int br; } ;
struct ena_adapter {int num_queues; struct ena_ring* tx_ring; } ;
typedef TYPE_1__* if_t ;
struct TYPE_6__ {struct ena_adapter* if_softc; } ;


 int ENA_RING_MTX_LOCK (struct ena_ring*) ;
 int ENA_RING_MTX_UNLOCK (struct ena_ring*) ;
 int drbr_empty (TYPE_1__*,int ) ;
 int drbr_flush (TYPE_1__*,int ) ;
 int if_qflush (TYPE_1__*) ;

void
ena_qflush(if_t ifp)
{
 struct ena_adapter *adapter = ifp->if_softc;
 struct ena_ring *tx_ring = adapter->tx_ring;
 int i;

 for(i = 0; i < adapter->num_queues; ++i, ++tx_ring)
  if (!drbr_empty(ifp, tx_ring->br)) {
   ENA_RING_MTX_LOCK(tx_ring);
   drbr_flush(ifp, tx_ring->br);
   ENA_RING_MTX_UNLOCK(tx_ring);
  }

 if_qflush(ifp);
}
