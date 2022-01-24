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
struct dmar_map_entry {struct dmar_domain* domain; } ;
struct dmar_domain {int /*<<< orphan*/  entries_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dmar_map_entry_zone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dmar_map_entry*) ; 

void
FUNC3(struct dmar_domain *domain, struct dmar_map_entry *entry)
{

	FUNC0(domain == entry->domain,
	    ("mismatched free domain %p entry %p entry->domain %p", domain,
	    entry, entry->domain));
	FUNC1(&domain->entries_cnt, 1);
	FUNC2(dmar_map_entry_zone, entry);
}