
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lltable {int llt_hsize; int llt_free_tbl; int llt_foreach_entry; int llt_prefix_free; int llt_unlink_entry; int llt_link_entry; int * lle_head; } ;
struct llentries {int dummy; } ;


 int CK_LIST_INIT (int *) ;
 int M_LLTABLE ;
 int M_WAITOK ;
 int M_ZERO ;
 int htable_foreach_lle ;
 int htable_free_tbl ;
 int htable_link_entry ;
 int htable_prefix_free ;
 int htable_unlink_entry ;
 void* malloc (int,int ,int) ;

struct lltable *
lltable_allocate_htbl(uint32_t hsize)
{
 struct lltable *llt;
 int i;

 llt = malloc(sizeof(struct lltable), M_LLTABLE, M_WAITOK | M_ZERO);
 llt->llt_hsize = hsize;
 llt->lle_head = malloc(sizeof(struct llentries) * hsize,
     M_LLTABLE, M_WAITOK | M_ZERO);

 for (i = 0; i < llt->llt_hsize; i++)
  CK_LIST_INIT(&llt->lle_head[i]);


 llt->llt_link_entry = htable_link_entry;
 llt->llt_unlink_entry = htable_unlink_entry;
 llt->llt_prefix_free = htable_prefix_free;
 llt->llt_foreach_entry = htable_foreach_lle;
 llt->llt_free_tbl = htable_free_tbl;

 return (llt);
}
