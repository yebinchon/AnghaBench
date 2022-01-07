
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {int llt_ifp; } ;
struct llentry {int la_flags; } ;


 int ARPSTAT_ADD (int ,size_t) ;
 int IF_AFDATA_WLOCK_ASSERT (int ) ;
 int KASSERT (int ,char*) ;
 int LLE_LINKED ;
 int LLE_WLOCK_ASSERT (struct llentry*) ;
 int dropped ;
 size_t llentry_free (struct llentry*) ;
 int lltable_unlink_entry (struct lltable*,struct llentry*) ;

__attribute__((used)) static void
in_lltable_free_entry(struct lltable *llt, struct llentry *lle)
{
 size_t pkts_dropped;

 LLE_WLOCK_ASSERT(lle);
 KASSERT(llt != ((void*)0), ("lltable is NULL"));


 if ((lle->la_flags & LLE_LINKED) != 0) {
  IF_AFDATA_WLOCK_ASSERT(llt->llt_ifp);
  lltable_unlink_entry(llt, lle);
 }


 pkts_dropped = llentry_free(lle);
 ARPSTAT_ADD(dropped, pkts_dropped);
}
