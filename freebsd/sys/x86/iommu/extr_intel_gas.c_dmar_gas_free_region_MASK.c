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
struct dmar_map_entry {int flags; } ;
struct dmar_domain {int /*<<< orphan*/  last_place; int /*<<< orphan*/  first_place; int /*<<< orphan*/  rb_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int DMAR_MAP_ENTRY_MAP ; 
 int DMAR_MAP_ENTRY_PLACE ; 
 int DMAR_MAP_ENTRY_RMRR ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct dmar_map_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dmar_map_entry*) ; 
 struct dmar_map_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dmar_map_entry*) ; 
 int /*<<< orphan*/  dmar_gas_entries_tree ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_domain*,struct dmar_map_entry*) ; 

void
FUNC6(struct dmar_domain *domain, struct dmar_map_entry *entry)
{
	struct dmar_map_entry *next, *prev;

	FUNC0(domain);
	FUNC1((entry->flags & (DMAR_MAP_ENTRY_PLACE | DMAR_MAP_ENTRY_RMRR |
	    DMAR_MAP_ENTRY_MAP)) == DMAR_MAP_ENTRY_RMRR,
	    ("non-RMRR entry %p %p", domain, entry));

	prev = FUNC3(dmar_gas_entries_tree, &domain->rb_root, entry);
	next = FUNC2(dmar_gas_entries_tree, &domain->rb_root, entry);
	FUNC5(domain, entry);
	entry->flags &= ~DMAR_MAP_ENTRY_RMRR;

	if (prev == NULL)
		FUNC4(domain, domain->first_place);
	if (next == NULL)
		FUNC4(domain, domain->last_place);
}