
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llentry {int la_flags; } ;
struct ifnet {int dummy; } ;


 int IF_AFDATA_WLOCK (struct ifnet*) ;
 int IF_AFDATA_WUNLOCK (struct ifnet*) ;
 int LLE_ADDREF (struct llentry*) ;
 int LLE_DELETED ;
 int LLE_FREE_LOCKED (struct llentry*) ;
 int LLE_REMREF (struct llentry*) ;
 int LLE_WLOCK (struct llentry*) ;
 int LLE_WLOCK_ASSERT (struct llentry*) ;
 int LLE_WUNLOCK (struct llentry*) ;
 int lltable_set_entry_addr (struct ifnet*,struct llentry*,char const*,size_t,int) ;

int
lltable_try_set_entry_addr(struct ifnet *ifp, struct llentry *lle,
    const char *linkhdr, size_t linkhdrsize, int lladdr_off)
{



 LLE_WLOCK_ASSERT(lle);
 LLE_ADDREF(lle);
 LLE_WUNLOCK(lle);
 IF_AFDATA_WLOCK(ifp);
 LLE_WLOCK(lle);





 if ((lle->la_flags & LLE_DELETED) != 0) {
  IF_AFDATA_WUNLOCK(ifp);
  LLE_FREE_LOCKED(lle);
  return (0);
 }


 lltable_set_entry_addr(ifp, lle, linkhdr, linkhdrsize, lladdr_off);

 IF_AFDATA_WUNLOCK(ifp);

 LLE_REMREF(lle);

 return (1);
}
