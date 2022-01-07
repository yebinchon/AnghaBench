
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int m_len; struct mbuf* m_next; } ;
struct ipoib_rx_buf {struct mbuf* mb; int * mapping; } ;
struct TYPE_4__ {int num_sge; int wr_id; } ;
struct ipoib_dev_priv {struct ipoib_rx_buf* rx_ring; TYPE_2__ rx_wr; int qp; TYPE_1__* rx_sge; } ;
struct ib_recv_wr {int dummy; } ;
struct TYPE_3__ {int length; int addr; } ;


 int IPOIB_OP_RECV ;
 int ib_post_recv (int ,TYPE_2__*,struct ib_recv_wr**) ;
 int ipoib_dma_unmap_rx (struct ipoib_dev_priv*,struct ipoib_rx_buf*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int,int) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ipoib_ib_post_receive(struct ipoib_dev_priv *priv, int id)
{
 struct ipoib_rx_buf *rx_req;
 struct ib_recv_wr *bad_wr;
 struct mbuf *m;
 int ret;
 int i;

 rx_req = &priv->rx_ring[id];
 for (m = rx_req->mb, i = 0; m != ((void*)0); m = m->m_next, i++) {
  priv->rx_sge[i].addr = rx_req->mapping[i];
  priv->rx_sge[i].length = m->m_len;
 }
 priv->rx_wr.num_sge = i;
 priv->rx_wr.wr_id = id | IPOIB_OP_RECV;

 ret = ib_post_recv(priv->qp, &priv->rx_wr, &bad_wr);
 if (unlikely(ret)) {
  ipoib_warn(priv, "receive failed for buf %d (%d)\n", id, ret);
  ipoib_dma_unmap_rx(priv, &priv->rx_ring[id]);
  m_freem(priv->rx_ring[id].mb);
  priv->rx_ring[id].mb = ((void*)0);
 }

 return ret;
}
