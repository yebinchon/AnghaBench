#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  TYPE_3__* vm_map_entry_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {int /*<<< orphan*/  vm_object; TYPE_2__* sub_map; } ;
struct TYPE_14__ {scalar_t__ start; scalar_t__ end; int eflags; scalar_t__ offset; TYPE_1__ object; } ;
struct TYPE_13__ {unsigned int timestamp; int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int KERN_FAILURE ; 
 int KERN_INVALID_ADDRESS ; 
 int KERN_INVALID_ARGUMENT ; 
 int KERN_SUCCESS ; 
 int MAP_ENTRY_IS_SUB_MAP ; 
 int MAP_ENTRY_USER_WIRED ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_3__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

int
FUNC9(
	vm_map_t map,
	vm_offset_t start,
	vm_offset_t end,
	boolean_t syncio,
	boolean_t invalidate)
{
	vm_map_entry_t current;
	vm_map_entry_t entry;
	vm_size_t size;
	vm_object_t object;
	vm_ooffset_t offset;
	unsigned int last_timestamp;
	boolean_t failed;

	FUNC3(map);
	FUNC0(map, start, end);
	if (!FUNC4(map, start, &entry)) {
		FUNC5(map);
		return (KERN_INVALID_ADDRESS);
	} else if (start == end) {
		start = entry->start;
		end = entry->end;
	}
	/*
	 * Make a first pass to check for user-wired memory and holes.
	 */
	for (current = entry; current->start < end;
	    current = FUNC2(current)) {
		if (invalidate && (current->eflags & MAP_ENTRY_USER_WIRED)) {
			FUNC5(map);
			return (KERN_INVALID_ARGUMENT);
		}
		if (end > current->end &&
		    current->end != FUNC2(current)->start) {
			FUNC5(map);
			return (KERN_INVALID_ADDRESS);
		}
	}

	if (invalidate)
		FUNC1(map->pmap, start, end);
	failed = FALSE;

	/*
	 * Make a second pass, cleaning/uncaching pages from the indicated
	 * objects as we go.
	 */
	for (current = entry; current->start < end;) {
		offset = current->offset + (start - current->start);
		size = (end <= current->end ? end : current->end) - start;
		if (current->eflags & MAP_ENTRY_IS_SUB_MAP) {
			vm_map_t smap;
			vm_map_entry_t tentry;
			vm_size_t tsize;

			smap = current->object.sub_map;
			FUNC3(smap);
			(void) FUNC4(smap, offset, &tentry);
			tsize = tentry->end - offset;
			if (tsize < size)
				size = tsize;
			object = tentry->object.vm_object;
			offset = tentry->offset + (offset - tentry->start);
			FUNC5(smap);
		} else {
			object = current->object.vm_object;
		}
		FUNC7(object);
		last_timestamp = map->timestamp;
		FUNC5(map);
		if (!FUNC8(object, offset, size, syncio, invalidate))
			failed = TRUE;
		start += size;
		FUNC6(object);
		FUNC3(map);
		if (last_timestamp == map->timestamp ||
		    !FUNC4(map, start, &current))
			current = FUNC2(current);
	}

	FUNC5(map);
	return (failed ? KERN_FAILURE : KERN_SUCCESS);
}