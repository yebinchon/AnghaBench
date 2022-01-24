#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_13__ {int eflags; } ;
struct TYPE_12__ {int oflags; scalar_t__ dirty; int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int MAP_ENTRY_NOSYNC ; 
 int /*<<< orphan*/  PGA_NOSYNC ; 
 int VM_FAULT_DIRTY ; 
 int VM_FAULT_WIRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int VM_PROT_WRITE ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(vm_map_entry_t entry, vm_page_t m, vm_prot_t prot,
    vm_prot_t fault_type, int fault_flags, bool excl)
{
	bool need_dirty;

	if (((prot & VM_PROT_WRITE) == 0 &&
	    (fault_flags & VM_FAULT_DIRTY) == 0) ||
	    (m->oflags & VPO_UNMANAGED) != 0)
		return;

	FUNC0(m->object);
	FUNC1(m);

	need_dirty = ((fault_type & VM_PROT_WRITE) != 0 &&
	    (fault_flags & VM_FAULT_WIRE) == 0) ||
	    (fault_flags & VM_FAULT_DIRTY) != 0;

	FUNC2(m->object);

	if (!excl)
		/*
		 * If two callers of vm_fault_dirty() with excl ==
		 * FALSE, one for the map entry with MAP_ENTRY_NOSYNC
		 * flag set, other with flag clear, race, it is
		 * possible for the no-NOSYNC thread to see m->dirty
		 * != 0 and not clear PGA_NOSYNC.  Take vm_page lock
		 * around manipulation of PGA_NOSYNC and
		 * vm_page_dirty() call to avoid the race.
		 */
		FUNC6(m);

	/*
	 * If this is a NOSYNC mmap we do not want to set PGA_NOSYNC
	 * if the page is already dirty to prevent data written with
	 * the expectation of being synced from not being synced.
	 * Likewise if this entry does not request NOSYNC then make
	 * sure the page isn't marked NOSYNC.  Applications sharing
	 * data should use the same flags to avoid ping ponging.
	 */
	if ((entry->eflags & MAP_ENTRY_NOSYNC) != 0) {
		if (m->dirty == 0) {
			FUNC4(m, PGA_NOSYNC);
		}
	} else {
		FUNC3(m, PGA_NOSYNC);
	}

	/*
	 * If the fault is a write, we know that this page is being
	 * written NOW so dirty it explicitly to save on
	 * pmap_is_modified() calls later.
	 *
	 * Also, since the page is now dirty, we can possibly tell
	 * the pager to release any swap backing the page.  Calling
	 * the pager requires a write lock on the object.
	 */
	if (need_dirty)
		FUNC5(m);
	if (!excl)
		FUNC7(m);
	else if (need_dirty)
		FUNC8(m);
}