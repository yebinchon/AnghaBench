
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ipoib_dev_priv {int lock; int drain_lock; TYPE_1__* ibwc; int recv_cq; } ;
typedef int intmax_t ;
struct TYPE_4__ {scalar_t__ status; int wr_id; } ;


 scalar_t__ IB_WC_SUCCESS ;
 scalar_t__ IB_WC_WR_FLUSH_ERR ;
 int IPOIB_NUM_WC ;
 int IPOIB_OP_CM ;
 int IPOIB_OP_RECV ;
 int ib_poll_cq (int ,int,TYPE_1__*) ;
 int ipoib_cm_handle_rx_wc (struct ipoib_dev_priv*,TYPE_1__*) ;
 int ipoib_ib_handle_rx_wc (struct ipoib_dev_priv*,TYPE_1__*) ;
 scalar_t__ ipoib_poll_tx (struct ipoib_dev_priv*,int) ;
 int panic (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ipoib_drain_cq(struct ipoib_dev_priv *priv)
{
 int i, n;

 spin_lock(&priv->drain_lock);
 do {
  n = ib_poll_cq(priv->recv_cq, IPOIB_NUM_WC, priv->ibwc);
  for (i = 0; i < n; ++i) {





   if (priv->ibwc[i].status == IB_WC_SUCCESS)
    priv->ibwc[i].status = IB_WC_WR_FLUSH_ERR;

   if ((priv->ibwc[i].wr_id & IPOIB_OP_RECV) == 0)
    panic("ipoib_drain_cq:  Bad wrid 0x%jX\n",
        (intmax_t)priv->ibwc[i].wr_id);
   if (priv->ibwc[i].wr_id & IPOIB_OP_CM)
    ipoib_cm_handle_rx_wc(priv, priv->ibwc + i);
   else
    ipoib_ib_handle_rx_wc(priv, priv->ibwc + i);
  }
 } while (n == IPOIB_NUM_WC);
 spin_unlock(&priv->drain_lock);

 spin_lock(&priv->lock);
 while (ipoib_poll_tx(priv, 1))
  ;

 spin_unlock(&priv->lock);
}
