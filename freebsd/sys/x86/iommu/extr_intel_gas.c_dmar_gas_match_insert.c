
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct dmar_map_entry {scalar_t__ end; scalar_t__ start; scalar_t__ free_after; int flags; } ;
struct dmar_gas_match_args {scalar_t__ size; struct dmar_map_entry* entry; TYPE_1__* domain; } ;
struct TYPE_2__ {int rb_root; } ;


 int DMAR_MAP_ENTRY_MAP ;
 int KASSERT (int,char*) ;
 struct dmar_map_entry* RB_NEXT (int ,int *,struct dmar_map_entry*) ;
 struct dmar_map_entry* RB_PREV (int ,int *,struct dmar_map_entry*) ;
 int dmar_gas_entries_tree ;
 int dmar_gas_rb_insert (TYPE_1__*,struct dmar_map_entry*) ;

__attribute__((used)) static void
dmar_gas_match_insert(struct dmar_gas_match_args *a,
    struct dmar_map_entry *prev)
{
 struct dmar_map_entry *next;
 bool found;
 a->entry->end = a->entry->start + a->size;

 next = RB_NEXT(dmar_gas_entries_tree, &a->domain->rb_root, prev);
 KASSERT(next->start >= a->entry->end &&
     next->start - a->entry->start >= a->size &&
     prev->end <= a->entry->end,
     ("dmar_gas_match_insert hole failed %p prev (%jx, %jx) "
     "free_after %jx next (%jx, %jx) entry (%jx, %jx)", a->domain,
     (uintmax_t)prev->start, (uintmax_t)prev->end,
     (uintmax_t)prev->free_after,
     (uintmax_t)next->start, (uintmax_t)next->end,
     (uintmax_t)a->entry->start, (uintmax_t)a->entry->end));

 prev->free_after = a->entry->start - prev->end;
 a->entry->free_after = next->start - a->entry->end;

 found = dmar_gas_rb_insert(a->domain, a->entry);
 KASSERT(found, ("found dup %p start %jx size %jx",
     a->domain, (uintmax_t)a->entry->start, (uintmax_t)a->size));
 a->entry->flags = DMAR_MAP_ENTRY_MAP;

 KASSERT(RB_PREV(dmar_gas_entries_tree, &a->domain->rb_root,
     a->entry) == prev,
     ("entry %p prev %p inserted prev %p", a->entry, prev,
     RB_PREV(dmar_gas_entries_tree, &a->domain->rb_root, a->entry)));
 KASSERT(RB_NEXT(dmar_gas_entries_tree, &a->domain->rb_root,
     a->entry) == next,
     ("entry %p next %p inserted next %p", a->entry, next,
     RB_NEXT(dmar_gas_entries_tree, &a->domain->rb_root, a->entry)));
}
