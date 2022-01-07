
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_generic_adapter {struct netmap_adapter* prev; } ;
struct netmap_adapter {int name; int * ifp; } ;
struct ifnet {int dummy; } ;


 int NM_RESTORE_NA (struct ifnet*,struct netmap_adapter*) ;
 int netmap_adapter_put (struct netmap_adapter*) ;
 struct ifnet* netmap_generic_getifp (struct netmap_generic_adapter*) ;
 scalar_t__ nm_iszombie (struct netmap_adapter*) ;
 int nm_prinf (char*,int ) ;

__attribute__((used)) static void
generic_netmap_dtor(struct netmap_adapter *na)
{
 struct netmap_generic_adapter *gna = (struct netmap_generic_adapter*)na;
 struct ifnet *ifp = netmap_generic_getifp(gna);
 struct netmap_adapter *prev_na = gna->prev;

 if (prev_na != ((void*)0)) {
  netmap_adapter_put(prev_na);
  if (nm_iszombie(na)) {




          netmap_adapter_put(prev_na);
  }
  nm_prinf("Native netmap adapter for %s restored", prev_na->name);
 }
 NM_RESTORE_NA(ifp, prev_na);




 na->ifp = ((void*)0);
 nm_prinf("Emulated netmap adapter for %s destroyed", na->name);
}
