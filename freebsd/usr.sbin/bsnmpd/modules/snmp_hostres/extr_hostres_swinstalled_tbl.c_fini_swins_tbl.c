
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swins_map_entry {struct swins_map_entry* name; struct swins_map_entry* entry; } ;


 struct swins_map_entry* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct swins_map_entry*,int ) ;
 int assert (int ) ;
 int free (struct swins_map_entry*) ;
 int link ;
 int swins_map ;
 int swins_tbl ;

void
fini_swins_tbl(void)
{
 struct swins_map_entry *n1;

 while ((n1 = STAILQ_FIRST(&swins_map)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&swins_map, link);
  if (n1->entry != ((void*)0)) {
   TAILQ_REMOVE(&swins_tbl, n1->entry, link);
   free(n1->entry->name);
   free(n1->entry);
  }
  free(n1->name);
  free(n1);
 }
 assert(TAILQ_EMPTY(&swins_tbl));
}
