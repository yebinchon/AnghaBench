
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_udma_q_params {int * desc_base; int desc_phy_base_map; int desc_phy_base_tag; } ;
struct al_eth_ring {int sw_count; int br_mtx; TYPE_1__* tx_buffer_info; int dma_buf_tag; int * br; int enqueue_tq; int enqueue_task; int cmpl_tq; int cmpl_task; struct al_udma_q_params q_params; } ;
struct al_eth_adapter {int netdev; struct al_eth_ring* tx_ring; } ;
struct TYPE_2__ {int dma_map; int * m; } ;


 int M_DEVBUF ;
 int M_IFAL ;
 int al_dma_free_coherent (int ,int ,int *) ;
 int buf_ring_free (int *,int ) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int drbr_flush (int ,int *) ;
 int free (TYPE_1__*,int ) ;
 int m_freem (int *) ;
 int mtx_destroy (int *) ;
 scalar_t__ taskqueue_cancel (int ,int *,int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static void
al_eth_free_tx_resources(struct al_eth_adapter *adapter, int qid)
{
 struct al_eth_ring *tx_ring = &adapter->tx_ring[qid];
 struct al_udma_q_params *q_params = &tx_ring->q_params;
 int size;


 while (taskqueue_cancel(tx_ring->cmpl_tq, &tx_ring->cmpl_task, ((void*)0)))
  taskqueue_drain(tx_ring->cmpl_tq, &tx_ring->cmpl_task);

 taskqueue_free(tx_ring->cmpl_tq);
 while (taskqueue_cancel(tx_ring->enqueue_tq,
     &tx_ring->enqueue_task, ((void*)0))) {
  taskqueue_drain(tx_ring->enqueue_tq, &tx_ring->enqueue_task);
 }

 taskqueue_free(tx_ring->enqueue_tq);

 if (tx_ring->br != ((void*)0)) {
  drbr_flush(adapter->netdev, tx_ring->br);
  buf_ring_free(tx_ring->br, M_DEVBUF);
 }

 for (size = 0; size < tx_ring->sw_count; size++) {
  m_freem(tx_ring->tx_buffer_info[size].m);
  tx_ring->tx_buffer_info[size].m = ((void*)0);

  bus_dmamap_unload(tx_ring->dma_buf_tag,
      tx_ring->tx_buffer_info[size].dma_map);
  bus_dmamap_destroy(tx_ring->dma_buf_tag,
      tx_ring->tx_buffer_info[size].dma_map);
 }
 bus_dma_tag_destroy(tx_ring->dma_buf_tag);

 free(tx_ring->tx_buffer_info, M_IFAL);
 tx_ring->tx_buffer_info = ((void*)0);

 mtx_destroy(&tx_ring->br_mtx);


 if (q_params->desc_base == ((void*)0))
  return;

 al_dma_free_coherent(q_params->desc_phy_base_tag,
     q_params->desc_phy_base_map, q_params->desc_base);

 q_params->desc_base = ((void*)0);
}
