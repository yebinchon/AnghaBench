
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entry {scalar_t__ end; scalar_t__ start; scalar_t__ free_after; } ;
struct dmar_domain {scalar_t__ end; int rb_root; } ;


 struct dmar_map_entry* RB_NEXT (int ,int *,struct dmar_map_entry*) ;
 int dmar_gas_augment_entry (struct dmar_map_entry*) ;
 int dmar_gas_entries_tree ;

__attribute__((used)) static void
dmar_gas_fix_free(struct dmar_domain *domain, struct dmar_map_entry *entry)
{
 struct dmar_map_entry *next;

 next = RB_NEXT(dmar_gas_entries_tree, &domain->rb_root, entry);
 entry->free_after = (next != ((void*)0) ? next->start : domain->end) -
     entry->end;
 dmar_gas_augment_entry(entry);
}
