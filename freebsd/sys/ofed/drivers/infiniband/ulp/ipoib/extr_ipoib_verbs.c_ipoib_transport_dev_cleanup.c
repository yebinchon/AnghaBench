
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int pd; int recv_cq; int send_cq; int flags; int * qp; } ;


 int IPOIB_PKEY_ASSIGNED ;
 int clear_bit (int ,int *) ;
 int ib_dealloc_pd (int ) ;
 scalar_t__ ib_destroy_cq (int ) ;
 scalar_t__ ib_destroy_qp (int *) ;
 int ipoib_cm_dev_cleanup (struct ipoib_dev_priv*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;

void ipoib_transport_dev_cleanup(struct ipoib_dev_priv *priv)
{

 if (priv->qp) {
  if (ib_destroy_qp(priv->qp))
   ipoib_warn(priv, "ib_qp_destroy failed\n");

  priv->qp = ((void*)0);
  clear_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);
 }

 if (ib_destroy_cq(priv->send_cq))
  ipoib_warn(priv, "ib_cq_destroy (send) failed\n");

 if (ib_destroy_cq(priv->recv_cq))
  ipoib_warn(priv, "ib_cq_destroy (recv) failed\n");

 ipoib_cm_dev_cleanup(priv);

 ib_dealloc_pd(priv->pd);
}
