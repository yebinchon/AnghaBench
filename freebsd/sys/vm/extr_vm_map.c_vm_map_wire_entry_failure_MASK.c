#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  TYPE_3__* vm_map_entry_t ;
struct TYPE_7__ {int /*<<< orphan*/  vm_object; } ;
struct TYPE_9__ {int eflags; int wired_count; scalar_t__ start; int /*<<< orphan*/  offset; TYPE_1__ object; scalar_t__ end; } ;
struct TYPE_8__ {int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAP_ENTRY_IN_TRANSITION ; 
 int /*<<< orphan*/  PQ_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(vm_map_t map, vm_map_entry_t entry,
    vm_offset_t failed_addr)
{

	FUNC1(map);
	FUNC0((entry->eflags & MAP_ENTRY_IN_TRANSITION) != 0 &&
	    entry->wired_count == 1,
	    ("vm_map_wire_entry_failure: entry %p isn't being wired", entry));
	FUNC0(failed_addr < entry->end,
	    ("vm_map_wire_entry_failure: entry %p was fully wired", entry));

	/*
	 * If any pages at the start of this entry were successfully wired,
	 * then unwire them.
	 */
	if (failed_addr > entry->start) {
		FUNC2(map->pmap, entry->start, failed_addr);
		FUNC3(entry->object.vm_object, entry->offset,
		    failed_addr - entry->start, PQ_ACTIVE);
	}

	/*
	 * Assign an out-of-range value to represent the failure to wire this
	 * entry.
	 */
	entry->wired_count = -1;
}