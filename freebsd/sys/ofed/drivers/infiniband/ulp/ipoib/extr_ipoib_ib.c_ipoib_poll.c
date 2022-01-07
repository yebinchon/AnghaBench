
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int recv_cq; int drain_lock; struct ib_wc* ibwc; } ;
struct ib_wc {int wr_id; } ;
typedef int intmax_t ;


 int IB_CQ_NEXT_COMP ;
 int IB_CQ_REPORT_MISSED_EVENTS ;
 int IPOIB_NUM_WC ;
 int IPOIB_OP_CM ;
 int IPOIB_OP_RECV ;
 int ib_poll_cq (int ,int,struct ib_wc*) ;
 scalar_t__ ib_req_notify_cq (int ,int) ;
 int ipoib_cm_handle_rx_wc (struct ipoib_dev_priv*,struct ib_wc*) ;
 int ipoib_ib_handle_rx_wc (struct ipoib_dev_priv*,struct ib_wc*) ;
 int panic (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
ipoib_poll(struct ipoib_dev_priv *priv)
{
 int n, i;

poll_more:
 spin_lock(&priv->drain_lock);
 for (;;) {
  n = ib_poll_cq(priv->recv_cq, IPOIB_NUM_WC, priv->ibwc);
  for (i = 0; i < n; i++) {
   struct ib_wc *wc = priv->ibwc + i;

   if ((wc->wr_id & IPOIB_OP_RECV) == 0)
    panic("ipoib_poll: Bad wr_id 0x%jX\n",
        (intmax_t)wc->wr_id);
   if (wc->wr_id & IPOIB_OP_CM)
    ipoib_cm_handle_rx_wc(priv, wc);
   else
    ipoib_ib_handle_rx_wc(priv, wc);
  }

  if (n != IPOIB_NUM_WC)
   break;
 }
 spin_unlock(&priv->drain_lock);

 if (ib_req_notify_cq(priv->recv_cq,
     IB_CQ_NEXT_COMP | IB_CQ_REPORT_MISSED_EVENTS) > 0)
  goto poll_more;
}
