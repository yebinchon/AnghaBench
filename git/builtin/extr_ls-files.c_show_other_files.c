
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct dir_struct {int nr; struct dir_entry** entries; } ;
struct dir_entry {int len; int name; } ;


 int index_name_is_other (struct index_state const*,int ,int ) ;
 int show_dir_entry (struct index_state const*,int ,struct dir_entry*) ;
 int tag_other ;

__attribute__((used)) static void show_other_files(const struct index_state *istate,
        const struct dir_struct *dir)
{
 int i;

 for (i = 0; i < dir->nr; i++) {
  struct dir_entry *ent = dir->entries[i];
  if (!index_name_is_other(istate, ent->name, ent->len))
   continue;
  show_dir_entry(istate, tag_other, ent);
 }
}
