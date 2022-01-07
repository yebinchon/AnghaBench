
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int flush_light; struct ifnet* dev; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int ipoib_open (struct ipoib_dev_priv*) ;
 int ipoib_workqueue ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
ipoib_init(void *arg)
{
 struct ifnet *dev;
 struct ipoib_dev_priv *priv;

 priv = arg;
 dev = priv->dev;
 if ((dev->if_drv_flags & IFF_DRV_RUNNING) == 0)
  ipoib_open(priv);
 queue_work(ipoib_workqueue, &priv->flush_light);
}
