
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_map_entry {int flags; } ;
struct dmar_domain {int last_place; int first_place; int rb_root; } ;


 int DMAR_DOMAIN_ASSERT_LOCKED (struct dmar_domain*) ;
 int DMAR_MAP_ENTRY_MAP ;
 int DMAR_MAP_ENTRY_PLACE ;
 int DMAR_MAP_ENTRY_RMRR ;
 int KASSERT (int,char*) ;
 struct dmar_map_entry* RB_NEXT (int ,int *,struct dmar_map_entry*) ;
 struct dmar_map_entry* RB_PREV (int ,int *,struct dmar_map_entry*) ;
 int dmar_gas_entries_tree ;
 int dmar_gas_rb_insert (struct dmar_domain*,int ) ;
 int dmar_gas_rb_remove (struct dmar_domain*,struct dmar_map_entry*) ;

void
dmar_gas_free_region(struct dmar_domain *domain, struct dmar_map_entry *entry)
{
 struct dmar_map_entry *next, *prev;

 DMAR_DOMAIN_ASSERT_LOCKED(domain);
 KASSERT((entry->flags & (DMAR_MAP_ENTRY_PLACE | DMAR_MAP_ENTRY_RMRR |
     DMAR_MAP_ENTRY_MAP)) == DMAR_MAP_ENTRY_RMRR,
     ("non-RMRR entry %p %p", domain, entry));

 prev = RB_PREV(dmar_gas_entries_tree, &domain->rb_root, entry);
 next = RB_NEXT(dmar_gas_entries_tree, &domain->rb_root, entry);
 dmar_gas_rb_remove(domain, entry);
 entry->flags &= ~DMAR_MAP_ENTRY_RMRR;

 if (prev == ((void*)0))
  dmar_gas_rb_insert(domain, domain->first_place);
 if (next == ((void*)0))
  dmar_gas_rb_insert(domain, domain->last_place);
}
