
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int lock; int poll_timer; struct ifnet* dev; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 scalar_t__ ipoib_poll_tx (struct ipoib_dev_priv*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void drain_tx_cq(struct ipoib_dev_priv *priv)
{
 struct ifnet *dev = priv->dev;

 spin_lock(&priv->lock);
 while (ipoib_poll_tx(priv, 1))
  ;

 if (dev->if_drv_flags & IFF_DRV_OACTIVE)
  mod_timer(&priv->poll_timer, jiffies + 1);

 spin_unlock(&priv->lock);
}
