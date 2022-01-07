
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {int na_flags; } ;
struct ifnet {int dummy; } ;


 struct netmap_adapter* NA (struct ifnet*) ;
 int NAF_ZOMBIE ;
 int NM_KR_LOCKED ;
 scalar_t__ NM_NA_VALID (struct ifnet*) ;
 int netmap_set_all_rings (struct netmap_adapter*,int ) ;

void
netmap_undo_zombie(struct ifnet *ifp)
{
 if (NM_NA_VALID(ifp)) {
  struct netmap_adapter *na = NA(ifp);
  if (na->na_flags & NAF_ZOMBIE) {
   netmap_set_all_rings(na, NM_KR_LOCKED);
   na->na_flags &= ~NAF_ZOMBIE;
   netmap_set_all_rings(na, 0);
  }
 }
}
