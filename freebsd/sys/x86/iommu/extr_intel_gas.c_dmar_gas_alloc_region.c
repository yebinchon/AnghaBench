
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_int ;
struct dmar_map_entry {int start; int end; int flags; } ;
struct dmar_domain {int end; int rb_root; } ;


 int DMAR_DOMAIN_ASSERT_LOCKED (struct dmar_domain*) ;
 int DMAR_MAP_ENTRY_PLACE ;
 int DMAR_MAP_ENTRY_RMRR ;
 int DMAR_PAGE_MASK ;
 int EBUSY ;
 int EINVAL ;
 int KASSERT (int,char*) ;
 struct dmar_map_entry* RB_NEXT (int ,int *,struct dmar_map_entry*) ;
 struct dmar_map_entry* RB_NFIND (int ,int *,struct dmar_map_entry*) ;
 struct dmar_map_entry* RB_PREV (int ,int *,struct dmar_map_entry*) ;
 int dmar_gas_entries_tree ;
 int dmar_gas_rb_insert (struct dmar_domain*,struct dmar_map_entry*) ;
 int dmar_gas_rb_remove (struct dmar_domain*,struct dmar_map_entry*) ;

__attribute__((used)) static int
dmar_gas_alloc_region(struct dmar_domain *domain, struct dmar_map_entry *entry,
    u_int flags)
{
 struct dmar_map_entry *next, *prev;
 bool found;

 DMAR_DOMAIN_ASSERT_LOCKED(domain);

 if ((entry->start & DMAR_PAGE_MASK) != 0 ||
     (entry->end & DMAR_PAGE_MASK) != 0)
  return (EINVAL);
 if (entry->start >= entry->end)
  return (EINVAL);
 if (entry->end >= domain->end)
  return (EINVAL);

 next = RB_NFIND(dmar_gas_entries_tree, &domain->rb_root, entry);
 KASSERT(next != ((void*)0), ("next must be non-null %p %jx", domain,
     (uintmax_t)entry->start));
 prev = RB_PREV(dmar_gas_entries_tree, &domain->rb_root, next);
 if (prev != ((void*)0) && prev->end > entry->start &&
     (prev->flags & DMAR_MAP_ENTRY_PLACE) == 0) {
  if ((prev->flags & DMAR_MAP_ENTRY_RMRR) == 0)
   return (EBUSY);
  entry->start = prev->end;
 }
 if (next->start < entry->end &&
     (next->flags & DMAR_MAP_ENTRY_PLACE) == 0) {
  if ((next->flags & DMAR_MAP_ENTRY_RMRR) == 0)
   return (EBUSY);
  entry->end = next->start;
 }
 if (entry->end == entry->start)
  return (0);

 if (prev != ((void*)0) && prev->end > entry->start) {

  dmar_gas_rb_remove(domain, prev);
  prev = ((void*)0);
 }
 if (next->start < entry->end) {
  dmar_gas_rb_remove(domain, next);
  next = ((void*)0);
 }

 found = dmar_gas_rb_insert(domain, entry);
 KASSERT(found, ("found RMRR dup %p start %jx end %jx",
     domain, (uintmax_t)entry->start, (uintmax_t)entry->end));
 entry->flags = DMAR_MAP_ENTRY_RMRR;
 return (0);
}
