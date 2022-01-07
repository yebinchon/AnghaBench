
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_map_entry {struct fs_map_entry* a_name; struct fs_map_entry* entry; struct fs_map_entry* remoteMountPoint; struct fs_map_entry* mountPoint; } ;


 struct fs_map_entry* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct fs_map_entry*,int ) ;
 int assert (int ) ;
 int free (struct fs_map_entry*) ;
 int fs_map ;
 int fs_tbl ;
 int link ;

void
fini_fs_tbl(void)
{
 struct fs_map_entry *n1;

      while ((n1 = STAILQ_FIRST(&fs_map)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&fs_map, link);
  if (n1->entry != ((void*)0)) {
   TAILQ_REMOVE(&fs_tbl, n1->entry, link);
   free(n1->entry->mountPoint);
   free(n1->entry->remoteMountPoint);
   free(n1->entry);
  }
  free(n1->a_name);
  free(n1);
      }
 assert(TAILQ_EMPTY(&fs_tbl));
}
