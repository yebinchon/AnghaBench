
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llentry {int la_flags; int lle_timer; } ;


 int KASSERT (int,char*) ;
 int LLE_FREE_LOCKED (struct llentry*) ;
 int LLE_LINKED ;
 int LLE_REMREF (struct llentry*) ;
 int LLE_WLOCK_ASSERT (struct llentry*) ;
 scalar_t__ callout_stop (int *) ;
 size_t lltable_drop_entry_queue (struct llentry*) ;

size_t
llentry_free(struct llentry *lle)
{
 size_t pkts_dropped;

 LLE_WLOCK_ASSERT(lle);

 KASSERT((lle->la_flags & LLE_LINKED) == 0, ("freeing linked lle"));

 pkts_dropped = lltable_drop_entry_queue(lle);


 if (callout_stop(&lle->lle_timer) > 0)
  LLE_REMREF(lle);
 LLE_FREE_LOCKED(lle);

 return (pkts_dropped);
}
