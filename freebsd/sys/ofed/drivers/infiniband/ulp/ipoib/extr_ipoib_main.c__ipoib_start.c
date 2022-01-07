
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int lock; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int ipoib_start_locked (struct ifnet*,struct ipoib_dev_priv*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
_ipoib_start(struct ifnet *dev, struct ipoib_dev_priv *priv)
{

 if ((dev->if_drv_flags & (IFF_DRV_RUNNING|IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING)
  return;

 spin_lock(&priv->lock);
 ipoib_start_locked(dev, priv);
 spin_unlock(&priv->lock);
}
