
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ena_ring {int ring_size; int * push_buf_intermediate_buf; TYPE_2__* free_tx_ids; TYPE_2__* tx_buffer_info; int br; int enqueue_tq; int enqueue_task; } ;
struct ena_netmap_tx_info {scalar_t__* socket_buf_idx; int * map_seg; } ;
struct ena_adapter {TYPE_1__* ena_dev; int tx_buf_tag; TYPE_3__* ifp; struct ena_ring* tx_ring; } ;
struct TYPE_6__ {int if_capenable; } ;
struct TYPE_5__ {int head_mapped; int seg_mapped; int * mbuf; struct ena_netmap_tx_info nm_info; int map_seg; int map_head; } ;
struct TYPE_4__ {int dmadev; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int ENA_MEM_FREE (int ,int *) ;
 int ENA_PKT_MAX_BUFS ;
 int ENA_RING_MTX_LOCK (struct ena_ring*) ;
 int ENA_RING_MTX_UNLOCK (struct ena_ring*) ;
 int IFCAP_NETMAP ;
 int M_DEVBUF ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int drbr_flush (TYPE_3__*,int ) ;
 int ena_netmap_unload (struct ena_adapter*,int ) ;
 int free (TYPE_2__*,int ) ;
 int m_freem (int *) ;
 scalar_t__ taskqueue_cancel (int ,int *,int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static void
ena_free_tx_resources(struct ena_adapter *adapter, int qid)
{
 struct ena_ring *tx_ring = &adapter->tx_ring[qid];





 while (taskqueue_cancel(tx_ring->enqueue_tq, &tx_ring->enqueue_task,
     ((void*)0)))
  taskqueue_drain(tx_ring->enqueue_tq, &tx_ring->enqueue_task);

 taskqueue_free(tx_ring->enqueue_tq);

 ENA_RING_MTX_LOCK(tx_ring);

 drbr_flush(adapter->ifp, tx_ring->br);


 for (int i = 0; i < tx_ring->ring_size; i++) {
  if (tx_ring->tx_buffer_info[i].head_mapped == 1) {
   bus_dmamap_sync(adapter->tx_buf_tag,
       tx_ring->tx_buffer_info[i].map_head,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(adapter->tx_buf_tag,
       tx_ring->tx_buffer_info[i].map_head);
   tx_ring->tx_buffer_info[i].head_mapped = 0;
  }
  bus_dmamap_destroy(adapter->tx_buf_tag,
      tx_ring->tx_buffer_info[i].map_head);

  if (tx_ring->tx_buffer_info[i].seg_mapped == 1) {
   bus_dmamap_sync(adapter->tx_buf_tag,
       tx_ring->tx_buffer_info[i].map_seg,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(adapter->tx_buf_tag,
       tx_ring->tx_buffer_info[i].map_seg);
   tx_ring->tx_buffer_info[i].seg_mapped = 0;
  }
  bus_dmamap_destroy(adapter->tx_buf_tag,
      tx_ring->tx_buffer_info[i].map_seg);
  m_freem(tx_ring->tx_buffer_info[i].mbuf);
  tx_ring->tx_buffer_info[i].mbuf = ((void*)0);
 }
 ENA_RING_MTX_UNLOCK(tx_ring);


 free(tx_ring->tx_buffer_info, M_DEVBUF);
 tx_ring->tx_buffer_info = ((void*)0);

 free(tx_ring->free_tx_ids, M_DEVBUF);
 tx_ring->free_tx_ids = ((void*)0);

 ENA_MEM_FREE(adapter->ena_dev->dmadev,
     tx_ring->push_buf_intermediate_buf);
 tx_ring->push_buf_intermediate_buf = ((void*)0);
}
