
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct ipoib_tx_buf {int * mapping; struct mbuf* mb; } ;
struct TYPE_6__ {int num_sge; unsigned int wr_id; int opcode; } ;
struct TYPE_5__ {int hlen; TYPE_3__ wr; void* header; scalar_t__ mss; struct ib_ah* ah; int remote_qpn; } ;
struct ipoib_dev_priv {TYPE_2__ tx_wr; int qp; TYPE_1__* tx_sge; } ;
struct ib_send_wr {int dummy; } ;
struct ib_ah {int dummy; } ;
struct TYPE_4__ {int length; int addr; } ;


 int IB_WR_LSO ;
 int IB_WR_SEND ;
 int ib_post_send (int ,TYPE_3__*,struct ib_send_wr**) ;

__attribute__((used)) static inline int
post_send(struct ipoib_dev_priv *priv, unsigned int wr_id,
    struct ib_ah *address, u32 qpn, struct ipoib_tx_buf *tx_req, void *head,
    int hlen)
{
 struct ib_send_wr *bad_wr;
 struct mbuf *mb = tx_req->mb;
 u64 *mapping = tx_req->mapping;
 struct mbuf *m;
 int i;

 for (m = mb, i = 0; m != ((void*)0); m = m->m_next, i++) {
  priv->tx_sge[i].addr = mapping[i];
  priv->tx_sge[i].length = m->m_len;
 }
 priv->tx_wr.wr.num_sge = i;
 priv->tx_wr.wr.wr_id = wr_id;
 priv->tx_wr.remote_qpn = qpn;
 priv->tx_wr.ah = address;

 if (head) {
  priv->tx_wr.mss = 0;
  priv->tx_wr.header = head;
  priv->tx_wr.hlen = hlen;
  priv->tx_wr.wr.opcode = IB_WR_LSO;
 } else
  priv->tx_wr.wr.opcode = IB_WR_SEND;

 return ib_post_send(priv->qp, &priv->tx_wr.wr, &bad_wr);
}
