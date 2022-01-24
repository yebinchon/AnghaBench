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
struct dmar_map_entry {int flags; struct dmar_domain* domain; } ;
struct dmar_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*) ; 
 int DMAR_MAP_ENTRY_RMRR ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_domain*,struct dmar_map_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_domain*,struct dmar_map_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_domain*,struct dmar_map_entry*) ; 

void
FUNC5(struct dmar_map_entry *entry, bool free)
{
	struct dmar_domain *domain;

	domain = entry->domain;
	FUNC0(domain);
	if ((entry->flags & DMAR_MAP_ENTRY_RMRR) != 0)
		FUNC3(domain, entry);
	else
		FUNC4(domain, entry);
	FUNC1(domain);
	if (free)
		FUNC2(domain, entry);
	else
		entry->flags = 0;
}