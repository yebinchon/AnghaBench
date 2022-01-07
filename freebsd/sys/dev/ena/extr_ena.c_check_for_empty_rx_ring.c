
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int empty_rx_ring; } ;
struct ena_ring {int ring_size; scalar_t__ empty_rx_queue; TYPE_2__* que; TYPE_1__ rx_stats; int ena_com_io_sq; } ;
struct ena_adapter {int num_queues; int pdev; struct ena_ring* rx_ring; } ;
struct TYPE_4__ {int cleanup_task; int cleanup_tq; } ;


 scalar_t__ EMPTY_RX_REFILL ;
 int ENA_FLAG_DEV_UP ;
 scalar_t__ ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_TRIGGER_RESET ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*,int) ;
 int ena_com_free_desc (int ) ;
 int taskqueue_enqueue (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
check_for_empty_rx_ring(struct ena_adapter *adapter)
{
 struct ena_ring *rx_ring;
 int i, refill_required;

 if (!ENA_FLAG_ISSET(ENA_FLAG_DEV_UP, adapter))
  return;

 if (ENA_FLAG_ISSET(ENA_FLAG_TRIGGER_RESET, adapter))
  return;

 for (i = 0; i < adapter->num_queues; i++) {
  rx_ring = &adapter->rx_ring[i];

  refill_required = ena_com_free_desc(rx_ring->ena_com_io_sq);
  if (unlikely(refill_required == (rx_ring->ring_size - 1))) {
   rx_ring->empty_rx_queue++;

   if (rx_ring->empty_rx_queue >= EMPTY_RX_REFILL) {
    counter_u64_add(rx_ring->rx_stats.empty_rx_ring,
        1);

    device_printf(adapter->pdev,
        "trigger refill for ring %d\n", i);

    taskqueue_enqueue(rx_ring->que->cleanup_tq,
        &rx_ring->que->cleanup_task);
    rx_ring->empty_rx_queue = 0;
   }
  } else {
   rx_ring->empty_rx_queue = 0;
  }
 }
}
