#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  TYPE_3__* vm_map_entry_t ;
struct TYPE_17__ {TYPE_2__* sub_map; int /*<<< orphan*/ * vm_object; } ;
struct TYPE_19__ {scalar_t__ start; scalar_t__ end; int eflags; TYPE_1__ object; } ;
struct TYPE_18__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int KERN_INVALID_ARGUMENT ; 
 int KERN_SUCCESS ; 
 int MAP_ENTRY_COW ; 
 int MAP_ENTRY_IS_SUB_MAP ; 
 int /*<<< orphan*/  MAP_IS_SUB_MAP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,scalar_t__) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

int
FUNC7(
	vm_map_t map,
	vm_offset_t start,
	vm_offset_t end,
	vm_map_t submap)
{
	vm_map_entry_t entry;
	int result;

	result = KERN_INVALID_ARGUMENT;

	FUNC4(submap);
	submap->flags |= MAP_IS_SUB_MAP;
	FUNC6(submap);

	FUNC4(map);

	FUNC0(map, start, end);

	if (FUNC5(map, start, &entry)) {
		FUNC2(map, entry, start);
	} else
		entry = FUNC3(entry);

	FUNC1(map, entry, end);

	if ((entry->start == start) && (entry->end == end) &&
	    ((entry->eflags & MAP_ENTRY_COW) == 0) &&
	    (entry->object.vm_object == NULL)) {
		entry->object.sub_map = submap;
		entry->eflags |= MAP_ENTRY_IS_SUB_MAP;
		result = KERN_SUCCESS;
	}
	FUNC6(map);

	if (result != KERN_SUCCESS) {
		FUNC4(submap);
		submap->flags &= ~MAP_IS_SUB_MAP;
		FUNC6(submap);
	}
	return (result);
}