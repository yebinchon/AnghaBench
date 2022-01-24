#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  TYPE_1__* vm_map_entry_t ;
struct TYPE_13__ {scalar_t__ start; int eflags; scalar_t__ end; int wired_count; int /*<<< orphan*/ * wiring_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KERN_INVALID_ADDRESS ; 
 int KERN_INVALID_ARGUMENT ; 
 int KERN_SUCCESS ; 
 int MAP_ENTRY_IN_TRANSITION ; 
 int MAP_ENTRY_NEEDS_WAKEUP ; 
 int MAP_ENTRY_USER_WIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int VM_MAP_WIRE_HOLESOK ; 
 int VM_MAP_WIRE_USER ; 
 int /*<<< orphan*/ * curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int
FUNC14(vm_map_t map, vm_offset_t start, vm_offset_t end,
    int flags)
{
	vm_map_entry_t entry, first_entry;
	int rv;
	bool first_iteration, holes_ok, need_wakeup, user_unwire;

	if (start == end)
		return (KERN_SUCCESS);
	holes_ok = (flags & VM_MAP_WIRE_HOLESOK) != 0;
	user_unwire = (flags & VM_MAP_WIRE_USER) != 0;
	FUNC9(map);
	FUNC1(map, start, end);
	if (!FUNC10(map, start, &first_entry)) {
		if (holes_ok)
			first_entry = FUNC6(first_entry);
		else {
			FUNC12(map);
			return (KERN_INVALID_ADDRESS);
		}
	}
	first_iteration = true;
	entry = first_entry;
	rv = KERN_SUCCESS;
	while (entry->start < end) {
		if (entry->eflags & MAP_ENTRY_IN_TRANSITION) {
			/*
			 * We have not yet clipped the entry.
			 */
			entry = FUNC4(map, start, &end,
			    holes_ok, entry);
			if (entry == NULL) {
				if (first_iteration) {
					FUNC12(map);
					return (KERN_INVALID_ADDRESS);
				}
				rv = KERN_INVALID_ADDRESS;
				break;
			}
			first_entry = first_iteration ? entry : NULL;
			continue;
		}
		first_iteration = false;
		FUNC3(map, entry, start);
		FUNC2(map, entry, end);
		/*
		 * Mark the entry in case the map lock is released.  (See
		 * above.)
		 */
		FUNC0((entry->eflags & MAP_ENTRY_IN_TRANSITION) == 0 &&
		    entry->wiring_thread == NULL,
		    ("owned map entry %p", entry));
		entry->eflags |= MAP_ENTRY_IN_TRANSITION;
		entry->wiring_thread = curthread;
		/*
		 * Check the map for holes in the specified region.
		 * If holes_ok, skip this check.
		 */
		if (!holes_ok &&
		    (entry->end < end &&
		    FUNC6(entry)->start > entry->end)) {
			end = entry->end;
			rv = KERN_INVALID_ADDRESS;
			break;
		}
		/*
		 * If system unwiring, require that the entry is system wired.
		 */
		if (!user_unwire &&
		    FUNC7(entry) == 0) {
			end = entry->end;
			rv = KERN_INVALID_ARGUMENT;
			break;
		}
		entry = FUNC6(entry);
	}
	need_wakeup = false;
	if (first_entry == NULL &&
	    !FUNC10(map, start, &first_entry)) {
		FUNC0(holes_ok, ("vm_map_unwire: lookup failed"));
		first_entry = FUNC6(first_entry);
	}
	for (entry = first_entry; entry->start < end;
	    entry = FUNC6(entry)) {
		/*
		 * If holes_ok was specified, an empty
		 * space in the unwired region could have been mapped
		 * while the map lock was dropped for draining
		 * MAP_ENTRY_IN_TRANSITION.  Moreover, another thread
		 * could be simultaneously wiring this new mapping
		 * entry.  Detect these cases and skip any entries
		 * marked as in transition by us.
		 */
		if ((entry->eflags & MAP_ENTRY_IN_TRANSITION) == 0 ||
		    entry->wiring_thread != curthread) {
			FUNC0(holes_ok,
			    ("vm_map_unwire: !HOLESOK and new/changed entry"));
			continue;
		}

		if (rv == KERN_SUCCESS && (!user_unwire ||
		    (entry->eflags & MAP_ENTRY_USER_WIRED))) {
			if (entry->wired_count == 1)
				FUNC8(map, entry);
			else
				entry->wired_count--;
			if (user_unwire)
				entry->eflags &= ~MAP_ENTRY_USER_WIRED;
		}
		FUNC0((entry->eflags & MAP_ENTRY_IN_TRANSITION) != 0,
		    ("vm_map_unwire: in-transition flag missing %p", entry));
		FUNC0(entry->wiring_thread == curthread,
		    ("vm_map_unwire: alien wire %p", entry));
		entry->eflags &= ~MAP_ENTRY_IN_TRANSITION;
		entry->wiring_thread = NULL;
		if (entry->eflags & MAP_ENTRY_NEEDS_WAKEUP) {
			entry->eflags &= ~MAP_ENTRY_NEEDS_WAKEUP;
			need_wakeup = true;
		}
		FUNC11(map, FUNC5(entry), entry);
	}
	FUNC11(map, FUNC5(entry), entry);
	FUNC12(map);
	if (need_wakeup)
		FUNC13(map);
	return (rv);
}