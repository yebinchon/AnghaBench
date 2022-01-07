
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storage_map_entry {struct storage_map_entry* a_name; struct storage_map_entry* entry; struct storage_map_entry* descr; } ;


 struct storage_map_entry* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct storage_map_entry*,int ) ;
 int assert (int ) ;
 int free (struct storage_map_entry*) ;
 struct storage_map_entry* fs_buf ;
 scalar_t__ fs_buf_count ;
 int link ;
 int storage_map ;
 int storage_tbl ;
 struct storage_map_entry* swap_devs ;
 scalar_t__ swap_devs_len ;

void
fini_storage_tbl(void)
{
 struct storage_map_entry *n1;

 if (swap_devs != ((void*)0)) {
  free(swap_devs);
  swap_devs = ((void*)0);
 }
 swap_devs_len = 0;

 if (fs_buf != ((void*)0)) {
  free(fs_buf);
  fs_buf = ((void*)0);
 }
 fs_buf_count = 0;

 while ((n1 = STAILQ_FIRST(&storage_map)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&storage_map, link);
  if (n1->entry != ((void*)0)) {
   TAILQ_REMOVE(&storage_tbl, n1->entry, link);
   free(n1->entry->descr);
   free(n1->entry);
  }
  free(n1->a_name);
  free(n1);
 }
 assert(TAILQ_EMPTY(&storage_tbl));
}
