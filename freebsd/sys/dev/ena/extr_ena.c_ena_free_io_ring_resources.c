
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_ring {int ring_mtx; int br; int rx_stats; int tx_stats; } ;
struct ena_adapter {struct ena_ring* rx_ring; struct ena_ring* tx_ring; } ;
typedef int counter_u64_t ;


 int ENA_RING_MTX_LOCK (struct ena_ring*) ;
 int ENA_RING_MTX_UNLOCK (struct ena_ring*) ;
 int M_DEVBUF ;
 int drbr_free (int ,int ) ;
 int ena_free_counters (int *,int) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
ena_free_io_ring_resources(struct ena_adapter *adapter, unsigned int qid)
{
 struct ena_ring *txr = &adapter->tx_ring[qid];
 struct ena_ring *rxr = &adapter->rx_ring[qid];

 ena_free_counters((counter_u64_t *)&txr->tx_stats,
     sizeof(txr->tx_stats));
 ena_free_counters((counter_u64_t *)&rxr->rx_stats,
     sizeof(rxr->rx_stats));

 ENA_RING_MTX_LOCK(txr);
 drbr_free(txr->br, M_DEVBUF);
 ENA_RING_MTX_UNLOCK(txr);

 mtx_destroy(&txr->ring_mtx);
}
