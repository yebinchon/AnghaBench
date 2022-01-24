#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  TYPE_1__* vm_map_entry_t ;
typedef  int vm_inherit_t ;
struct TYPE_9__ {int eflags; int inheritance; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int KERN_INVALID_ARGUMENT ; 
 int KERN_SUCCESS ; 
 int MAP_ENTRY_GUARD ; 
#define  VM_INHERIT_COPY 131 
#define  VM_INHERIT_NONE 130 
#define  VM_INHERIT_SHARE 129 
#define  VM_INHERIT_ZERO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(vm_map_t map, vm_offset_t start, vm_offset_t end,
	       vm_inherit_t new_inheritance)
{
	vm_map_entry_t entry;
	vm_map_entry_t temp_entry;

	switch (new_inheritance) {
	case VM_INHERIT_NONE:
	case VM_INHERIT_COPY:
	case VM_INHERIT_SHARE:
	case VM_INHERIT_ZERO:
		break;
	default:
		return (KERN_INVALID_ARGUMENT);
	}
	if (start == end)
		return (KERN_SUCCESS);
	FUNC5(map);
	FUNC0(map, start, end);
	if (FUNC6(map, start, &temp_entry)) {
		entry = temp_entry;
		FUNC2(map, entry, start);
	} else
		entry = FUNC4(temp_entry);
	while (entry->start < end) {
		FUNC1(map, entry, end);
		if ((entry->eflags & MAP_ENTRY_GUARD) == 0 ||
		    new_inheritance != VM_INHERIT_ZERO)
			entry->inheritance = new_inheritance;
		FUNC7(map, FUNC3(entry), entry);
		entry = FUNC4(entry);
	}
	FUNC7(map, FUNC3(entry), entry);
	FUNC8(map);
	return (KERN_SUCCESS);
}