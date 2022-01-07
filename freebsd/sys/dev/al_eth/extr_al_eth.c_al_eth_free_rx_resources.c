
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_udma_q_params {scalar_t__ cdesc_phy_base; int * cdesc_base; int cdesc_phy_base_map; int cdesc_phy_base_tag; int * desc_base; int desc_phy_base_map; int desc_phy_base_tag; } ;
struct al_eth_ring {int sw_count; int lro; TYPE_1__* rx_buffer_info; int dma_buf_tag; int enqueue_tq; int enqueue_task; struct al_udma_q_params q_params; } ;
struct al_eth_adapter {struct al_eth_ring* rx_ring; } ;
struct TYPE_2__ {int dma_map; int * m; } ;


 int M_IFAL ;
 int al_dma_free_coherent (int ,int ,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int free (TYPE_1__*,int ) ;
 int m_freem (int *) ;
 scalar_t__ taskqueue_cancel (int ,int *,int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;
 int tcp_lro_free (int *) ;

__attribute__((used)) static void
al_eth_free_rx_resources(struct al_eth_adapter *adapter, unsigned int qid)
{
 struct al_eth_ring *rx_ring = &adapter->rx_ring[qid];
 struct al_udma_q_params *q_params = &rx_ring->q_params;
 int size;


 while (taskqueue_cancel(rx_ring->enqueue_tq,
     &rx_ring->enqueue_task, ((void*)0))) {
  taskqueue_drain(rx_ring->enqueue_tq, &rx_ring->enqueue_task);
 }

 taskqueue_free(rx_ring->enqueue_tq);

 for (size = 0; size < rx_ring->sw_count; size++) {
  m_freem(rx_ring->rx_buffer_info[size].m);
  rx_ring->rx_buffer_info[size].m = ((void*)0);
  bus_dmamap_unload(rx_ring->dma_buf_tag,
      rx_ring->rx_buffer_info[size].dma_map);
  bus_dmamap_destroy(rx_ring->dma_buf_tag,
      rx_ring->rx_buffer_info[size].dma_map);
 }
 bus_dma_tag_destroy(rx_ring->dma_buf_tag);

 free(rx_ring->rx_buffer_info, M_IFAL);
 rx_ring->rx_buffer_info = ((void*)0);


 if (q_params->desc_base == ((void*)0))
  return;

 al_dma_free_coherent(q_params->desc_phy_base_tag,
     q_params->desc_phy_base_map, q_params->desc_base);

 q_params->desc_base = ((void*)0);


 if (q_params->cdesc_base == ((void*)0))
  return;

 al_dma_free_coherent(q_params->cdesc_phy_base_tag,
     q_params->cdesc_phy_base_map, q_params->cdesc_base);

 q_params->cdesc_phy_base = 0;


 tcp_lro_free(&rx_ring->lro);
}
