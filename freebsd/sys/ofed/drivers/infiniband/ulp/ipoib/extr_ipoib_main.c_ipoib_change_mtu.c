
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int mcast_mtu; int admin_mtu; int flush_light; int max_ib_mtu; } ;


 int EINVAL ;
 int IPOIB_CM_MTU (int ) ;
 int IPOIB_UD_MTU (int ) ;
 scalar_t__ ipoib_cm_admin_enabled (struct ipoib_dev_priv*) ;
 int ipoib_cm_max_mtu (struct ipoib_dev_priv*) ;
 int ipoib_propagate_ifnet_mtu (struct ipoib_dev_priv*,int,int) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 int ipoib_workqueue ;
 int min (int,int) ;
 int queue_work (int ,int *) ;

int
ipoib_change_mtu(struct ipoib_dev_priv *priv, int new_mtu, bool propagate)
{
 int error, prev_admin_mtu;


 if (ipoib_cm_admin_enabled(priv)) {
  if (new_mtu > IPOIB_CM_MTU(ipoib_cm_max_mtu(priv)))
   return -EINVAL;

  if (new_mtu > priv->mcast_mtu)
   ipoib_warn(priv, "mtu > %d will cause multicast packet drops.\n",
       priv->mcast_mtu);

  return (ipoib_propagate_ifnet_mtu(priv, new_mtu, propagate));
 }

 if (new_mtu > IPOIB_UD_MTU(priv->max_ib_mtu))
  return -EINVAL;

 prev_admin_mtu = priv->admin_mtu;
 priv->admin_mtu = new_mtu;
 error = ipoib_propagate_ifnet_mtu(priv, min(priv->mcast_mtu,
     priv->admin_mtu), propagate);
 if (error == 0) {

  if (prev_admin_mtu != new_mtu)
   queue_work(ipoib_workqueue, &priv->flush_light);
 } else
  priv->admin_mtu = prev_admin_mtu;
 return (error);
}
