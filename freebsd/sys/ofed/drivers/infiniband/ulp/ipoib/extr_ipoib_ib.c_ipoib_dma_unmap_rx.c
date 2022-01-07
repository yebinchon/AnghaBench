
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; struct mbuf* m_next; } ;
struct ipoib_rx_buf {int * mapping; struct mbuf* mb; } ;
struct ipoib_dev_priv {int ca; } ;


 int DMA_FROM_DEVICE ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;

void
ipoib_dma_unmap_rx(struct ipoib_dev_priv *priv, struct ipoib_rx_buf *rx_req)
{
 struct mbuf *m;
 int i;

 for (i = 0, m = rx_req->mb; m != ((void*)0); m = m->m_next, i++)
  ib_dma_unmap_single(priv->ca, rx_req->mapping[i], m->m_len,
      DMA_FROM_DEVICE);
}
