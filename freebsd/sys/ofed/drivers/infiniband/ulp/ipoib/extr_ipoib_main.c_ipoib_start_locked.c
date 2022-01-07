
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ipoib_dev_priv {int lock; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;


 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IPOIB_MTAP (struct ifnet*,struct mbuf*) ;
 int assert_spin_locked (int *) ;
 int ipoib_send_one (struct ipoib_dev_priv*,struct mbuf*) ;

void
ipoib_start_locked(struct ifnet *dev, struct ipoib_dev_priv *priv)
{
 struct mbuf *mb;

 assert_spin_locked(&priv->lock);

 while (!IFQ_DRV_IS_EMPTY(&dev->if_snd) &&
     (dev->if_drv_flags & IFF_DRV_OACTIVE) == 0) {
  IFQ_DRV_DEQUEUE(&dev->if_snd, mb);
  if (mb == ((void*)0))
   break;
  IPOIB_MTAP(dev, mb);
  ipoib_send_one(priv, mb);
 }
}
