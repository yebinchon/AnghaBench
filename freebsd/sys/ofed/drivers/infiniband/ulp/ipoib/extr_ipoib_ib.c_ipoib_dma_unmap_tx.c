
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct ipoib_tx_buf {int * mapping; struct mbuf* mb; } ;
struct ib_device {int dummy; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_unmap_single (struct ib_device*,int ,int ,int ) ;

void ipoib_dma_unmap_tx(struct ib_device *ca, struct ipoib_tx_buf *tx_req)
{
 struct mbuf *mb = tx_req->mb;
 u64 *mapping = tx_req->mapping;
 struct mbuf *m;
 int i;

 for (m = mb, i = 0; m != ((void*)0); m = m->m_next, i++)
  ib_dma_unmap_single(ca, mapping[i], m->m_len, DMA_TO_DEVICE);
}
