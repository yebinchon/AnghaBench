
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition_map_entry {struct partition_map_entry* id; struct partition_map_entry* entry; struct partition_map_entry* label; } ;


 struct partition_map_entry* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct partition_map_entry*,int ) ;
 int assert (int ) ;
 int free (struct partition_map_entry*) ;
 int link ;
 int partition_map ;
 int partition_tbl ;

void
fini_partition_tbl(void)
{
 struct partition_map_entry *m;

 while ((m = STAILQ_FIRST(&partition_map)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&partition_map, link);
  if(m->entry != ((void*)0)) {
   TAILQ_REMOVE(&partition_tbl, m->entry, link);
   free(m->entry->id);
   free(m->entry->label);
   free(m->entry);
  }
  free(m->id);
  free(m);
 }
 assert(TAILQ_EMPTY(&partition_tbl));
}
