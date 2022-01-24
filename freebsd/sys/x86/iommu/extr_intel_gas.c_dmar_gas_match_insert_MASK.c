#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct dmar_map_entry {scalar_t__ end; scalar_t__ start; scalar_t__ free_after; int /*<<< orphan*/  flags; } ;
struct dmar_gas_match_args {scalar_t__ size; struct dmar_map_entry* entry; TYPE_1__* domain; } ;
struct TYPE_2__ {int /*<<< orphan*/  rb_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAR_MAP_ENTRY_MAP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct dmar_map_entry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dmar_map_entry*) ; 
 struct dmar_map_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dmar_map_entry*) ; 
 int /*<<< orphan*/  dmar_gas_entries_tree ; 
 int FUNC3 (TYPE_1__*,struct dmar_map_entry*) ; 

__attribute__((used)) static void
FUNC4(struct dmar_gas_match_args *a,
    struct dmar_map_entry *prev)
{
	struct dmar_map_entry *next;
	bool found;

	/*
	 * The prev->end is always aligned on the page size, which
	 * causes page alignment for the entry->start too.  The size
	 * is checked to be multiple of the page size.
	 *
	 * The page sized gap is created between consequent
	 * allocations to ensure that out-of-bounds accesses fault.
	 */
	a->entry->end = a->entry->start + a->size;

	next = FUNC1(dmar_gas_entries_tree, &a->domain->rb_root, prev);
	FUNC0(next->start >= a->entry->end &&
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

	found = FUNC3(a->domain, a->entry);
	FUNC0(found, ("found dup %p start %jx size %jx",
	    a->domain, (uintmax_t)a->entry->start, (uintmax_t)a->size));
	a->entry->flags = DMAR_MAP_ENTRY_MAP;

	FUNC0(FUNC2(dmar_gas_entries_tree, &a->domain->rb_root,
	    a->entry) == prev,
	    ("entry %p prev %p inserted prev %p", a->entry, prev,
	    FUNC2(dmar_gas_entries_tree, &a->domain->rb_root, a->entry)));
	FUNC0(FUNC1(dmar_gas_entries_tree, &a->domain->rb_root,
	    a->entry) == next,
	    ("entry %p next %p inserted next %p", a->entry, next,
	    FUNC1(dmar_gas_entries_tree, &a->domain->rb_root, a->entry)));
}