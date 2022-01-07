
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ipoib_dev_priv {int dummy; } ;
struct ifnet {int if_snd; } ;


 int IFCOUNTER_OERRORS ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 struct ipoib_dev_priv* VLAN_COOKIE (struct ifnet*) ;
 void _ipoib_start (struct ifnet*,struct ipoib_dev_priv*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
ipoib_vlan_start(struct ifnet *dev)
{
 struct ipoib_dev_priv *priv;
 struct mbuf *mb;

 priv = VLAN_COOKIE(dev);
 if (priv != ((void*)0))
  return _ipoib_start(dev, priv);
 while (!IFQ_DRV_IS_EMPTY(&dev->if_snd)) {
  IFQ_DRV_DEQUEUE(&dev->if_snd, mb);
  if (mb == ((void*)0))
   break;
  m_freem(mb);
  if_inc_counter(dev, IFCOUNTER_OERRORS, 1);
 }
}
