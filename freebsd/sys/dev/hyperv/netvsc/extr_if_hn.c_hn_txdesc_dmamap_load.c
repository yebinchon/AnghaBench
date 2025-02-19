
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct hn_txdesc {scalar_t__ chim_index; int flags; int data_dmap; } ;
struct hn_tx_ring {int hn_tx_data_dtag; int hn_tx_collapsed; } ;
typedef int bus_dma_segment_t ;


 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int EFBIG ;
 int ENOBUFS ;
 scalar_t__ HN_NVS_CHIM_IDX_INVALID ;
 int HN_TXD_FLAG_DMAMAP ;
 int HN_TX_DATA_SEGCNT_MAX ;
 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,int *,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 struct mbuf* m_collapse (struct mbuf*,int ,int ) ;

__attribute__((used)) static __inline int
hn_txdesc_dmamap_load(struct hn_tx_ring *txr, struct hn_txdesc *txd,
    struct mbuf **m_head, bus_dma_segment_t *segs, int *nsegs)
{
 struct mbuf *m = *m_head;
 int error;

 KASSERT(txd->chim_index == HN_NVS_CHIM_IDX_INVALID, ("txd uses chim"));

 error = bus_dmamap_load_mbuf_sg(txr->hn_tx_data_dtag, txd->data_dmap,
     m, segs, nsegs, BUS_DMA_NOWAIT);
 if (error == EFBIG) {
  struct mbuf *m_new;

  m_new = m_collapse(m, M_NOWAIT, HN_TX_DATA_SEGCNT_MAX);
  if (m_new == ((void*)0))
   return ENOBUFS;
  else
   *m_head = m = m_new;
  txr->hn_tx_collapsed++;

  error = bus_dmamap_load_mbuf_sg(txr->hn_tx_data_dtag,
      txd->data_dmap, m, segs, nsegs, BUS_DMA_NOWAIT);
 }
 if (!error) {
  bus_dmamap_sync(txr->hn_tx_data_dtag, txd->data_dmap,
      BUS_DMASYNC_PREWRITE);
  txd->flags |= HN_TXD_FLAG_DMAMAP;
 }
 return error;
}
