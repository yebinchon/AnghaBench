
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_struct {int nr; int ignored_nr; struct dir_entry** entries; struct dir_entry** ignored; } ;
struct dir_entry {int dummy; } ;


 scalar_t__ check_dir_entry_contains (struct dir_entry*,struct dir_entry*) ;
 scalar_t__ cmp_dir_entry (struct dir_entry**,struct dir_entry**) ;
 int free (struct dir_entry*) ;

__attribute__((used)) static void correct_untracked_entries(struct dir_struct *dir)
{
 int src, dst, ign;

 for (src = dst = ign = 0; src < dir->nr; src++) {

  while (ign < dir->ignored_nr &&
         0 <= cmp_dir_entry(&dir->entries[src], &dir->ignored[ign]))
   ign++;

  if (ign < dir->ignored_nr &&
      check_dir_entry_contains(dir->entries[src], dir->ignored[ign])) {

   free(dir->entries[src]);
  } else {
   struct dir_entry *ent = dir->entries[src++];


   dir->entries[dst++] = ent;


   while (src < dir->nr &&
          check_dir_entry_contains(ent, dir->entries[src]))
    free(dir->entries[src++]);


   src--;
  }
 }
 dir->nr = dst;
}
