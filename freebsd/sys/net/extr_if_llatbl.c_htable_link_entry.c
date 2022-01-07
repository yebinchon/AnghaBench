
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct lltable {size_t (* llt_hash ) (struct llentry*,int ) ;struct llentries* lle_head; int llt_hsize; int llt_ifp; } ;
struct llentry {int la_flags; struct llentries* lle_head; struct lltable* lle_tbl; } ;
struct llentries {int dummy; } ;


 int CK_LIST_INSERT_HEAD (struct llentries*,struct llentry*,int ) ;
 int IF_AFDATA_WLOCK_ASSERT (int ) ;
 int LLE_LINKED ;
 int lle_next ;
 size_t stub1 (struct llentry*,int ) ;

__attribute__((used)) static void
htable_link_entry(struct lltable *llt, struct llentry *lle)
{
 struct llentries *lleh;
 uint32_t hashidx;

 if ((lle->la_flags & LLE_LINKED) != 0)
  return;

 IF_AFDATA_WLOCK_ASSERT(llt->llt_ifp);

 hashidx = llt->llt_hash(lle, llt->llt_hsize);
 lleh = &llt->lle_head[hashidx];

 lle->lle_tbl = llt;
 lle->lle_head = lleh;
 lle->la_flags |= LLE_LINKED;
 CK_LIST_INSERT_HEAD(lleh, lle, lle_next);
}
