
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entry {int dummy; } ;
struct dmar_domain {int rb_root; } ;


 struct dmar_map_entry* RB_PREV (int ,int *,struct dmar_map_entry*) ;
 int RB_REMOVE (int ,int *,struct dmar_map_entry*) ;
 int dmar_gas_entries_tree ;
 int dmar_gas_fix_free (struct dmar_domain*,struct dmar_map_entry*) ;

__attribute__((used)) static void
dmar_gas_rb_remove(struct dmar_domain *domain, struct dmar_map_entry *entry)
{
 struct dmar_map_entry *prev;

 prev = RB_PREV(dmar_gas_entries_tree, &domain->rb_root, entry);
 RB_REMOVE(dmar_gas_entries_tree, &domain->rb_root, entry);
 if (prev != ((void*)0))
  dmar_gas_fix_free(domain, prev);
}
