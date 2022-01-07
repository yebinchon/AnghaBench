
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int gone; struct ifnet* dev; int unit; int flags; } ;
struct ifnet {int dummy; } ;


 int IPOIB_FLAG_SUBINTERFACE ;
 int M_TEMP ;
 int VLAN_SETCOOKIE (struct ifnet*,int *) ;
 int bpfdetach (struct ifnet*) ;
 int free (struct ipoib_dev_priv*,int ) ;
 int free_unr (int ,int ) ;
 int if_detach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int ipoib_unrhdr ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
ipoib_detach(struct ipoib_dev_priv *priv)
{
 struct ifnet *dev;

 dev = priv->dev;
 if (!test_bit(IPOIB_FLAG_SUBINTERFACE, &priv->flags)) {
  priv->gone = 1;
  bpfdetach(dev);
  if_detach(dev);
  if_free(dev);
  free_unr(ipoib_unrhdr, priv->unit);
 } else
  VLAN_SETCOOKIE(priv->dev, ((void*)0));

 free(priv, M_TEMP);
}
