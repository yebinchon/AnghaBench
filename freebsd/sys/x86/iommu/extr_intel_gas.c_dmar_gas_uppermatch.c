
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
struct dmar_map_entry {scalar_t__ start; int end; } ;
struct dmar_gas_match_args {TYPE_3__* domain; TYPE_2__* common; TYPE_1__* entry; } ;
struct TYPE_6__ {int end; int rb_root; } ;
struct TYPE_5__ {scalar_t__ highaddr; int alignment; } ;
struct TYPE_4__ {scalar_t__ start; } ;


 scalar_t__ DMAR_PAGE_SIZE ;
 int ENOMEM ;
 int KASSERT (int ,char*) ;
 struct dmar_map_entry* RB_NEXT (int ,int *,struct dmar_map_entry*) ;
 struct dmar_map_entry* RB_NFIND (int ,int *,struct dmar_map_entry*) ;
 struct dmar_map_entry* RB_PREV (int ,int *,struct dmar_map_entry*) ;
 int dmar_gas_entries_tree ;
 int dmar_gas_match_insert (struct dmar_gas_match_args*,struct dmar_map_entry*) ;
 scalar_t__ dmar_gas_match_one (struct dmar_gas_match_args*,struct dmar_map_entry*,int ) ;
 scalar_t__ roundup2 (scalar_t__,int ) ;

__attribute__((used)) static int
dmar_gas_uppermatch(struct dmar_gas_match_args *a)
{
 struct dmar_map_entry *next, *prev, find_entry;

 find_entry.start = a->common->highaddr;
 next = RB_NFIND(dmar_gas_entries_tree, &a->domain->rb_root,
     &find_entry);
 if (next == ((void*)0))
  return (ENOMEM);
 prev = RB_PREV(dmar_gas_entries_tree, &a->domain->rb_root, next);
 KASSERT(prev != ((void*)0), ("no prev %p %jx", a->domain,
     (uintmax_t)find_entry.start));
 for (;;) {
  a->entry->start = prev->start + DMAR_PAGE_SIZE;
  if (a->entry->start < a->common->highaddr)
   a->entry->start = a->common->highaddr;
  a->entry->start = roundup2(a->entry->start,
      a->common->alignment);
  if (dmar_gas_match_one(a, prev, a->domain->end)) {
   dmar_gas_match_insert(a, prev);
   return (0);
  }
  prev = next;
  next = RB_NEXT(dmar_gas_entries_tree, &a->domain->rb_root,
      prev);
  KASSERT(next != ((void*)0), ("no next %p %jx", a->domain,
      (uintmax_t)find_entry.start));
  if (next->end >= a->domain->end)
   return (ENOMEM);
 }
}
