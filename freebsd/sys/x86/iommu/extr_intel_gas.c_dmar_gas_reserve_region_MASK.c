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
struct dmar_map_entry {int /*<<< orphan*/  flags; void* end; void* start; } ;
struct dmar_domain {int dummy; } ;
typedef  void* dmar_gaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*) ; 
 int /*<<< orphan*/  DMAR_GM_CANWAIT ; 
 int /*<<< orphan*/  DMAR_MAP_ENTRY_UNMAPPED ; 
 int /*<<< orphan*/  DMAR_PGF_WAITOK ; 
 struct dmar_map_entry* FUNC2 (struct dmar_domain*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dmar_domain*,struct dmar_map_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_domain*,struct dmar_map_entry*) ; 

int
FUNC5(struct dmar_domain *domain, dmar_gaddr_t start,
    dmar_gaddr_t end)
{
	struct dmar_map_entry *entry;
	int error;

	entry = FUNC2(domain, DMAR_PGF_WAITOK);
	entry->start = start;
	entry->end = end;
	FUNC0(domain);
	error = FUNC3(domain, entry, DMAR_GM_CANWAIT);
	if (error == 0)
		entry->flags |= DMAR_MAP_ENTRY_UNMAPPED;
	FUNC1(domain);
	if (error != 0)
		FUNC4(domain, entry);
	return (error);
}