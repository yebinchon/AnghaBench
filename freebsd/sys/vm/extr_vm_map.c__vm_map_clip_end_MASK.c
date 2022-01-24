#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_8__ {int /*<<< orphan*/  vm_object; } ;
struct TYPE_9__ {scalar_t__ start; scalar_t__ end; int eflags; TYPE_1__ object; int /*<<< orphan*/ * cred; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAP_ENTRY_IS_SUB_MAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(vm_map_t map, vm_map_entry_t entry, vm_offset_t end)
{
	vm_map_entry_t new_entry;

	FUNC1(map);
	FUNC0(entry->start < end && entry->end > end,
	    ("_vm_map_clip_end: invalid clip of entry %p", entry));

	/*
	 * Create a backing object now, if none exists, so that more individual
	 * objects won't be created after the map entry is split.
	 */
	FUNC3(map, entry);

	/* Clone the entry. */
	new_entry = FUNC4(map);
	*new_entry = *entry;

	/*
	 * Split off the back portion.  Insert the new entry AFTER this one,
	 * so that this entry has the specified ending address.
	 */
	new_entry->start = entry->end = end;
	new_entry->offset += (end - entry->start);
	if (new_entry->cred != NULL)
		FUNC2(entry->cred);

	FUNC5(map, new_entry);

	if ((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0) {
		FUNC7(new_entry->object.vm_object);
		FUNC6(new_entry, true);
	}
}