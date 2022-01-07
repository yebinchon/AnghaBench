
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {int dummy; } ;
struct ifnet {int dummy; } ;


 int if_rele (struct ifnet*) ;
 int netmap_adapter_put (struct netmap_adapter*) ;

void
netmap_unget_na(struct netmap_adapter *na, struct ifnet *ifp)
{
 if (ifp)
  if_rele(ifp);
 if (na)
  netmap_adapter_put(na);
}
