
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr {int dummy; } ;
struct lltable {int (* llt_delete_entry ) (struct lltable*,struct llentry*) ;struct ifnet* llt_ifp; } ;
struct llentry {int la_flags; } ;
struct ifnet {int dummy; } ;


 int ENOENT ;
 int EPERM ;
 int IF_AFDATA_WLOCK (struct ifnet*) ;
 int IF_AFDATA_WUNLOCK (struct ifnet*) ;
 int LLE_EXCLUSIVE ;
 int LLE_IFADDR ;
 int LLE_WUNLOCK (struct llentry*) ;
 struct llentry* lla_lookup (struct lltable*,int ,struct sockaddr const*) ;
 int lltable_unlink_entry (struct lltable*,struct llentry*) ;
 int stub1 (struct lltable*,struct llentry*) ;

int
lltable_delete_addr(struct lltable *llt, u_int flags,
    const struct sockaddr *l3addr)
{
 struct llentry *lle;
 struct ifnet *ifp;

 ifp = llt->llt_ifp;
 IF_AFDATA_WLOCK(ifp);
 lle = lla_lookup(llt, LLE_EXCLUSIVE, l3addr);

 if (lle == ((void*)0)) {
  IF_AFDATA_WUNLOCK(ifp);
  return (ENOENT);
 }
 if ((lle->la_flags & LLE_IFADDR) != 0 && (flags & LLE_IFADDR) == 0) {
  IF_AFDATA_WUNLOCK(ifp);
  LLE_WUNLOCK(lle);
  return (EPERM);
 }

 lltable_unlink_entry(llt, lle);
 IF_AFDATA_WUNLOCK(ifp);

 llt->llt_delete_entry(llt, lle);

 return (0);
}
