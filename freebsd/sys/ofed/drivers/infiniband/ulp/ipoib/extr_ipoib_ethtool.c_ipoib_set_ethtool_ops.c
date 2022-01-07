
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int SET_ETHTOOL_OPS (struct ifnet*,int *) ;
 int ipoib_ethtool_ops ;

void ipoib_set_ethtool_ops(struct ifnet *dev)
{
 SET_ETHTOOL_OPS(dev, &ipoib_ethtool_ops);
}
