
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_tx_buffer {int head_mapped; int seg_mapped; int * mbuf; int map_seg; int map_head; } ;
struct ena_ring {int ring_size; struct ena_tx_buffer* tx_buffer_info; } ;
struct ena_adapter {int tx_buf_tag; int pdev; struct ena_ring* tx_ring; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int ENA_DBG ;
 int ENA_RING_MTX_LOCK (struct ena_ring*) ;
 int ENA_RING_MTX_UNLOCK (struct ena_ring*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*,unsigned int,int) ;
 int ena_trace (int ,char*,unsigned int,int) ;
 int m_free (int *) ;

__attribute__((used)) static void
ena_free_tx_bufs(struct ena_adapter *adapter, unsigned int qid)
{
 bool print_once = 1;
 struct ena_ring *tx_ring = &adapter->tx_ring[qid];

 ENA_RING_MTX_LOCK(tx_ring);
 for (int i = 0; i < tx_ring->ring_size; i++) {
  struct ena_tx_buffer *tx_info = &tx_ring->tx_buffer_info[i];

  if (tx_info->mbuf == ((void*)0))
   continue;

  if (print_once) {
   device_printf(adapter->pdev,
       "free uncompleted tx mbuf qid %d idx 0x%x\n",
       qid, i);
   print_once = 0;
  } else {
   ena_trace(ENA_DBG,
       "free uncompleted tx mbuf qid %d idx 0x%x\n",
        qid, i);
  }

  if (tx_info->head_mapped == 1) {
   bus_dmamap_sync(adapter->tx_buf_tag, tx_info->map_head,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(adapter->tx_buf_tag,
       tx_info->map_head);
   tx_info->head_mapped = 0;
  }

  if (tx_info->seg_mapped == 1) {
   bus_dmamap_sync(adapter->tx_buf_tag, tx_info->map_seg,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(adapter->tx_buf_tag,
       tx_info->map_seg);
   tx_info->seg_mapped = 0;
  }

  m_free(tx_info->mbuf);
  tx_info->mbuf = ((void*)0);
 }
 ENA_RING_MTX_UNLOCK(tx_ring);
}
