#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  u_int ;
struct dmar_map_entry {int start; int end; int flags; } ;
struct dmar_domain {int end; int /*<<< orphan*/  rb_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int DMAR_MAP_ENTRY_PLACE ; 
 int DMAR_MAP_ENTRY_RMRR ; 
 int DMAR_PAGE_MASK ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct dmar_map_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dmar_map_entry*) ; 
 struct dmar_map_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dmar_map_entry*) ; 
 struct dmar_map_entry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dmar_map_entry*) ; 
 int /*<<< orphan*/  dmar_gas_entries_tree ; 
 int FUNC5 (struct dmar_domain*,struct dmar_map_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_domain*,struct dmar_map_entry*) ; 

__attribute__((used)) static int
FUNC7(struct dmar_domain *domain, struct dmar_map_entry *entry,
    u_int flags)
{
	struct dmar_map_entry *next, *prev;
	bool found;

	FUNC0(domain);

	if ((entry->start & DMAR_PAGE_MASK) != 0 ||
	    (entry->end & DMAR_PAGE_MASK) != 0)
		return (EINVAL);
	if (entry->start >= entry->end)
		return (EINVAL);
	if (entry->end >= domain->end)
		return (EINVAL);

	next = FUNC3(dmar_gas_entries_tree, &domain->rb_root, entry);
	FUNC1(next != NULL, ("next must be non-null %p %jx", domain,
	    (uintmax_t)entry->start));
	prev = FUNC4(dmar_gas_entries_tree, &domain->rb_root, next);
	/* prev could be NULL */

	/*
	 * Adapt to broken BIOSes which specify overlapping RMRR
	 * entries.
	 *
	 * XXXKIB: this does not handle a case when prev or next
	 * entries are completely covered by the current one, which
	 * extends both ways.
	 */
	if (prev != NULL && prev->end > entry->start &&
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

	if (prev != NULL && prev->end > entry->start) {
		/* This assumes that prev is the placeholder entry. */
		FUNC6(domain, prev);
		prev = NULL;
	}
	if (next->start < entry->end) {
		FUNC6(domain, next);
		next = NULL;
	}

	found = FUNC5(domain, entry);
	FUNC1(found, ("found RMRR dup %p start %jx end %jx",
	    domain, (uintmax_t)entry->start, (uintmax_t)entry->end));
	entry->flags = DMAR_MAP_ENTRY_RMRR;

#ifdef INVARIANTS
	struct dmar_map_entry *ip, *in;
	ip = RB_PREV(dmar_gas_entries_tree, &domain->rb_root, entry);
	in = RB_NEXT(dmar_gas_entries_tree, &domain->rb_root, entry);
	KASSERT(prev == NULL || ip == prev,
	    ("RMRR %p (%jx %jx) prev %p (%jx %jx) ins prev %p (%jx %jx)",
	    entry, entry->start, entry->end, prev,
	    prev == NULL ? 0 : prev->start, prev == NULL ? 0 : prev->end,
	    ip, ip == NULL ? 0 : ip->start, ip == NULL ? 0 : ip->end));
	KASSERT(next == NULL || in == next,
	    ("RMRR %p (%jx %jx) next %p (%jx %jx) ins next %p (%jx %jx)",
	    entry, entry->start, entry->end, next,
	    next == NULL ? 0 : next->start, next == NULL ? 0 : next->end,
	    in, in == NULL ? 0 : in->start, in == NULL ? 0 : in->end));
#endif

	return (0);
}