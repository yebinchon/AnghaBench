
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {struct ifnet* llt_ifp; } ;
struct llentry {int la_flags; } ;
struct ifnet {int dummy; } ;


 int IF_AFDATA_WLOCK_ASSERT (struct ifnet*) ;
 int KASSERT (int ,char*) ;
 int LLE_LINKED ;
 int LLE_WLOCK_ASSERT (struct llentry*) ;
 int llentry_free (struct llentry*) ;
 int lltable_unlink_entry (struct lltable*,struct llentry*) ;

__attribute__((used)) static void
in6_lltable_free_entry(struct lltable *llt, struct llentry *lle)
{
 struct ifnet *ifp;

 LLE_WLOCK_ASSERT(lle);
 KASSERT(llt != ((void*)0), ("lltable is NULL"));


 if ((lle->la_flags & LLE_LINKED) != 0) {

  ifp = llt->llt_ifp;
  IF_AFDATA_WLOCK_ASSERT(ifp);
  lltable_unlink_entry(llt, lle);
 }

 llentry_free(lle);
}
