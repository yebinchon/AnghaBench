
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {int na_flags; } ;
struct ifnet {int dummy; } ;


 struct netmap_adapter* NA (struct ifnet*) ;
 int NAF_NATIVE ;
 int NAF_ZOMBIE ;
 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 int NM_KR_LOCKED ;
 int netmap_adapter_put (struct netmap_adapter*) ;
 int netmap_enable_all_rings (struct ifnet*) ;
 int netmap_set_all_rings (struct netmap_adapter*,int ) ;

void
netmap_detach(struct ifnet *ifp)
{
 struct netmap_adapter *na = NA(ifp);

 if (!na)
  return;

 NMG_LOCK();
 netmap_set_all_rings(na, NM_KR_LOCKED);






 if (!(na->na_flags & NAF_NATIVE) || !netmap_adapter_put(na)) {
  na->na_flags |= NAF_ZOMBIE;
 }






 netmap_enable_all_rings(ifp);
 NMG_UNLOCK();
}
