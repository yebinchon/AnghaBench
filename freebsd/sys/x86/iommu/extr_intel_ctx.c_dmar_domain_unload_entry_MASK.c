#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dmar_unit {int /*<<< orphan*/  tlb_flush_entries; scalar_t__ qi_enabled; } ;
struct dmar_map_entry {scalar_t__ start; scalar_t__ end; TYPE_1__* domain; int /*<<< orphan*/  flags; int /*<<< orphan*/  gseq; } ;
struct TYPE_3__ {struct dmar_unit* dmar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  DMAR_MAP_ENTRY_QI_NF ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dmar_map_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmamap_link ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_map_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,scalar_t__) ; 

void
FUNC6(struct dmar_map_entry *entry, bool free)
{
	struct dmar_unit *unit;

	unit = entry->domain->dmar;
	if (unit->qi_enabled) {
		FUNC0(unit);
		FUNC4(entry->domain, entry->start,
		    entry->end - entry->start, &entry->gseq, true);
		if (!free)
			entry->flags |= DMAR_MAP_ENTRY_QI_NF;
		FUNC2(&unit->tlb_flush_entries, entry, dmamap_link);
		FUNC1(unit);
	} else {
		FUNC5(entry->domain, entry->start,
		    entry->end - entry->start);
		FUNC3(entry, free);
	}
}