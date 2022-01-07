
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_netmap_tx_info {int ** map_seg; } ;
struct ena_tx_buffer {int * map_seg; int * map_head; struct ena_netmap_tx_info nm_info; } ;
struct ena_ring {int ring_size; struct ena_tx_buffer* tx_buffer_info; struct ena_adapter* adapter; } ;
struct ena_adapter {TYPE_1__* ifp; int tx_buf_tag; } ;
typedef int bus_dma_tag_t ;
struct TYPE_2__ {int if_capenable; } ;


 int ENA_PKT_MAX_BUFS ;
 int IFCAP_NETMAP ;
 int bus_dmamap_destroy (int ,int *) ;

__attribute__((used)) static void
ena_release_all_tx_dmamap(struct ena_ring *tx_ring)
{
 struct ena_adapter *adapter = tx_ring->adapter;
 struct ena_tx_buffer *tx_info;
 bus_dma_tag_t tx_tag = adapter->tx_buf_tag;;
 int i;





 for (i = 0; i < tx_ring->ring_size; ++i) {
  tx_info = &tx_ring->tx_buffer_info[i];
  if (tx_info->map_head != ((void*)0)) {
   bus_dmamap_destroy(tx_tag, tx_info->map_head);
   tx_info->map_head = ((void*)0);
  }

  if (tx_info->map_seg != ((void*)0)) {
   bus_dmamap_destroy(tx_tag, tx_info->map_seg);
   tx_info->map_seg = ((void*)0);
  }
 }
}
