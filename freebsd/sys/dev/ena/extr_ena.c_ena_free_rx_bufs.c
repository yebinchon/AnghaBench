
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_rx_buffer {scalar_t__ netmap_buf_idx; int * mbuf; } ;
struct ena_ring {unsigned int ring_size; struct ena_rx_buffer* rx_buffer_info; } ;
struct ena_adapter {TYPE_1__* ifp; struct ena_ring* rx_ring; } ;
struct TYPE_2__ {int if_capenable; } ;


 int IFCAP_NETMAP ;
 int IFF_DYING ;
 int ena_free_rx_mbuf (struct ena_adapter*,struct ena_ring*,struct ena_rx_buffer*) ;
 int ena_netmap_free_rx_slot (struct ena_adapter*,struct ena_ring*,struct ena_rx_buffer*) ;
 int if_getflags (TYPE_1__*) ;

__attribute__((used)) static void
ena_free_rx_bufs(struct ena_adapter *adapter, unsigned int qid)
{
 struct ena_ring *rx_ring = &adapter->rx_ring[qid];
 unsigned int i;

 for (i = 0; i < rx_ring->ring_size; i++) {
  struct ena_rx_buffer *rx_info = &rx_ring->rx_buffer_info[i];

  if (rx_info->mbuf != ((void*)0))
   ena_free_rx_mbuf(adapter, rx_ring, rx_info);
 }
}
