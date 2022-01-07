
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_ring {int ring_size; int initialized; } ;
struct ena_adapter {int num_queues; struct ena_ring* rx_ring; } ;


 int ENA_WARNING ;
 int ena_refill_rx_bufs (struct ena_ring*,int) ;
 int ena_trace (int ,char*,int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ena_refill_all_rx_bufs(struct ena_adapter *adapter)
{
 struct ena_ring *rx_ring;
 int i, rc, bufs_num;

 for (i = 0; i < adapter->num_queues; i++) {
  rx_ring = &adapter->rx_ring[i];
  bufs_num = rx_ring->ring_size - 1;
  rc = ena_refill_rx_bufs(rx_ring, bufs_num);
  if (unlikely(rc != bufs_num))
   ena_trace(ENA_WARNING, "refilling Queue %d failed. "
       "Allocated %d buffers from: %d\n", i, rc, bufs_num);



 }
}
