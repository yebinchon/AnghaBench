
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_ring {int ring_size; TYPE_1__* free_rx_ids; TYPE_1__* rx_buffer_info; int lro; } ;
struct ena_adapter {int rx_buf_tag; struct ena_ring* rx_ring; } ;
struct TYPE_2__ {int map; int * mbuf; } ;


 int BUS_DMASYNC_POSTREAD ;
 int M_DEVBUF ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int free (TYPE_1__*,int ) ;
 int m_freem (int *) ;
 int tcp_lro_free (int *) ;

__attribute__((used)) static void
ena_free_rx_resources(struct ena_adapter *adapter, unsigned int qid)
{
 struct ena_ring *rx_ring = &adapter->rx_ring[qid];


 for (int i = 0; i < rx_ring->ring_size; i++) {
  bus_dmamap_sync(adapter->rx_buf_tag,
      rx_ring->rx_buffer_info[i].map, BUS_DMASYNC_POSTREAD);
  m_freem(rx_ring->rx_buffer_info[i].mbuf);
  rx_ring->rx_buffer_info[i].mbuf = ((void*)0);
  bus_dmamap_unload(adapter->rx_buf_tag,
      rx_ring->rx_buffer_info[i].map);
  bus_dmamap_destroy(adapter->rx_buf_tag,
      rx_ring->rx_buffer_info[i].map);
 }


 tcp_lro_free(&rx_ring->lro);


 free(rx_ring->rx_buffer_info, M_DEVBUF);
 rx_ring->rx_buffer_info = ((void*)0);

 free(rx_ring->free_rx_ids, M_DEVBUF);
 rx_ring->free_rx_ids = ((void*)0);
}
