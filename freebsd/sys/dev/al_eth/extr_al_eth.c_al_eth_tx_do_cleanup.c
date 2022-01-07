
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct mbuf {int dummy; } ;
struct al_eth_tx_buffer {unsigned int tx_descs; int dma_map; int * m; } ;
struct al_eth_ring {int ring_id; size_t next_to_clean; int dev; int dma_buf_tag; struct al_eth_tx_buffer* tx_buffer_info; int dma_q; } ;


 size_t AL_ETH_TX_RING_IDX_NEXT (struct al_eth_ring*,size_t) ;
 unsigned int al_eth_comp_tx_get (int ) ;
 int al_smp_data_memory_barrier () ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf_dbg (int ,char*,int,size_t) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
al_eth_tx_do_cleanup(struct al_eth_ring *tx_ring)
{
 unsigned int total_done;
 uint16_t next_to_clean;
 int qid = tx_ring->ring_id;

 total_done = al_eth_comp_tx_get(tx_ring->dma_q);
 device_printf_dbg(tx_ring->dev,
     "tx_poll: q %d total completed descs %x\n", qid, total_done);
 next_to_clean = tx_ring->next_to_clean;

 while (total_done != 0) {
  struct al_eth_tx_buffer *tx_info;
  struct mbuf *mbuf;

  tx_info = &tx_ring->tx_buffer_info[next_to_clean];

  if (tx_info->tx_descs > total_done)
   break;

  mbuf = tx_info->m;

  tx_info->m = ((void*)0);

  device_printf_dbg(tx_ring->dev,
      "tx_poll: q %d mbuf %p completed\n", qid, mbuf);


  bus_dmamap_unload(tx_ring->dma_buf_tag, tx_info->dma_map);

  m_freem(mbuf);
  total_done -= tx_info->tx_descs;
  next_to_clean = AL_ETH_TX_RING_IDX_NEXT(tx_ring, next_to_clean);
 }

 tx_ring->next_to_clean = next_to_clean;

 device_printf_dbg(tx_ring->dev, "tx_poll: q %d done next to clean %x\n",
     qid, next_to_clean);





 al_smp_data_memory_barrier();
}
