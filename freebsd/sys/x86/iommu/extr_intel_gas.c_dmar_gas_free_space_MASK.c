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
struct dmar_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int DMAR_MAP_ENTRY_MAP ; 
 int DMAR_MAP_ENTRY_PLACE ; 
 int DMAR_MAP_ENTRY_RMRR ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ dmar_check_free ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_domain*,struct dmar_map_entry*) ; 

void
FUNC4(struct dmar_domain *domain, struct dmar_map_entry *entry)
{

	FUNC0(domain);
	FUNC1((entry->flags & (DMAR_MAP_ENTRY_PLACE | DMAR_MAP_ENTRY_RMRR |
	    DMAR_MAP_ENTRY_MAP)) == DMAR_MAP_ENTRY_MAP,
	    ("permanent entry %p %p", domain, entry));

	FUNC3(domain, entry);
	entry->flags &= ~DMAR_MAP_ENTRY_MAP;
#ifdef INVARIANTS
	if (dmar_check_free)
		dmar_gas_check_free(domain);
#endif
}