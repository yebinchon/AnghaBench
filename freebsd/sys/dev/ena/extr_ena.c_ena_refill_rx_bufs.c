
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t uint16_t ;
struct ena_rx_buffer {int ena_buf; } ;
struct TYPE_2__ {int refil_partial; } ;
struct ena_ring {size_t next_to_use; size_t* free_rx_ids; int ena_com_io_sq; int qid; TYPE_1__ rx_stats; int ring_size; struct ena_rx_buffer* rx_buffer_info; struct ena_adapter* adapter; } ;
struct ena_adapter {int dummy; } ;


 int ENA_DBG ;
 int ENA_RSC ;
 int ENA_RXPTH ;
 size_t ENA_RX_RING_IDX_NEXT (size_t,int ) ;
 int ENA_WARNING ;
 int counter_u64_add (int ,int) ;
 int ena_alloc_rx_mbuf (struct ena_adapter*,struct ena_ring*,struct ena_rx_buffer*) ;
 int ena_com_add_single_rx_desc (int ,int *,size_t) ;
 int ena_com_write_sq_doorbell (int ) ;
 int ena_netmap_alloc_rx_slot (struct ena_adapter*,struct ena_ring*,struct ena_rx_buffer*) ;
 scalar_t__ ena_rx_ring_in_netmap (struct ena_adapter*,int ) ;
 int ena_trace (int,char*,size_t,...) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

int
ena_refill_rx_bufs(struct ena_ring *rx_ring, uint32_t num)
{
 struct ena_adapter *adapter = rx_ring->adapter;
 uint16_t next_to_use, req_id;
 uint32_t i;
 int rc;

 ena_trace(ENA_DBG | ENA_RXPTH | ENA_RSC, "refill qid: %d\n",
     rx_ring->qid);

 next_to_use = rx_ring->next_to_use;

 for (i = 0; i < num; i++) {
  struct ena_rx_buffer *rx_info;

  ena_trace(ENA_DBG | ENA_RXPTH | ENA_RSC,
      "RX buffer - next to use: %d\n", next_to_use);

  req_id = rx_ring->free_rx_ids[next_to_use];
  rx_info = &rx_ring->rx_buffer_info[req_id];





   rc = ena_alloc_rx_mbuf(adapter, rx_ring, rx_info);
  if (unlikely(rc != 0)) {
   ena_trace(ENA_WARNING,
       "failed to alloc buffer for rx queue %d\n",
       rx_ring->qid);
   break;
  }
  rc = ena_com_add_single_rx_desc(rx_ring->ena_com_io_sq,
      &rx_info->ena_buf, req_id);
  if (unlikely(rc != 0)) {
   ena_trace(ENA_WARNING,
       "failed to add buffer for rx queue %d\n",
       rx_ring->qid);
   break;
  }
  next_to_use = ENA_RX_RING_IDX_NEXT(next_to_use,
      rx_ring->ring_size);
 }

 if (unlikely(i < num)) {
  counter_u64_add(rx_ring->rx_stats.refil_partial, 1);
  ena_trace(ENA_WARNING,
       "refilled rx qid %d with only %d mbufs (from %d)\n",
       rx_ring->qid, i, num);
 }

 if (likely(i != 0)) {
  wmb();
  ena_com_write_sq_doorbell(rx_ring->ena_com_io_sq);
 }
 rx_ring->next_to_use = next_to_use;
 return (i);
}
