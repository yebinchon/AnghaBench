#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  int vm_pindex_t ;
typedef  TYPE_4__* vm_page_t ;
typedef  int vm_offset_t ;
typedef  TYPE_5__* vm_object_t ;
typedef  TYPE_6__* vm_map_entry_t ;
struct faultstate {TYPE_6__* entry; TYPE_1__* map; } ;
typedef  scalar_t__ pmap_t ;
struct TYPE_17__ {TYPE_5__* vm_object; } ;
struct TYPE_20__ {int start; int end; int offset; TYPE_3__ object; int /*<<< orphan*/  protection; } ;
struct TYPE_19__ {scalar_t__ type; int backing_object_offset; struct TYPE_19__* backing_object; } ;
struct TYPE_18__ {int flags; } ;
struct TYPE_16__ {int /*<<< orphan*/  p_vmspace; } ;
struct TYPE_15__ {scalar_t__ pmap; } ;
struct TYPE_14__ {TYPE_2__* td_proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ OBJT_DEFAULT ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 TYPE_11__* curthread ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 TYPE_4__* FUNC7 (TYPE_5__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(const struct faultstate *fs, vm_offset_t addra,
    int backward, int forward, bool obj_locked)
{
	pmap_t pmap;
	vm_map_entry_t entry;
	vm_object_t backing_object, lobject;
	vm_offset_t addr, starta;
	vm_pindex_t pindex;
	vm_page_t m;
	int i;

	pmap = fs->map->pmap;
	if (pmap != FUNC8(curthread->td_proc->p_vmspace))
		return;

	entry = fs->entry;

	if (addra < backward * PAGE_SIZE) {
		starta = entry->start;
	} else {
		starta = addra - backward * PAGE_SIZE;
		if (starta < entry->start)
			starta = entry->start;
	}

	/*
	 * Generate the sequence of virtual addresses that are candidates for
	 * prefaulting in an outward spiral from the faulting virtual address,
	 * "addra".  Specifically, the sequence is "addra - PAGE_SIZE", "addra
	 * + PAGE_SIZE", "addra - 2 * PAGE_SIZE", "addra + 2 * PAGE_SIZE", ...
	 * If the candidate address doesn't have a backing physical page, then
	 * the loop immediately terminates.
	 */
	for (i = 0; i < 2 * FUNC3(backward, forward); i++) {
		addr = addra + ((i >> 1) + 1) * ((i & 1) == 0 ? -PAGE_SIZE :
		    PAGE_SIZE);
		if (addr > addra + forward * PAGE_SIZE)
			addr = 0;

		if (addr < starta || addr >= entry->end)
			continue;

		if (!FUNC5(pmap, addr))
			continue;

		pindex = ((addr - entry->start) + entry->offset) >> PAGE_SHIFT;
		lobject = entry->object.vm_object;
		if (!obj_locked)
			FUNC1(lobject);
		while ((m = FUNC7(lobject, pindex)) == NULL &&
		    lobject->type == OBJT_DEFAULT &&
		    (backing_object = lobject->backing_object) != NULL) {
			FUNC0((lobject->backing_object_offset & PAGE_MASK) ==
			    0, ("vm_fault_prefault: unaligned object offset"));
			pindex += lobject->backing_object_offset >> PAGE_SHIFT;
			FUNC1(backing_object);
			if (!obj_locked || lobject != entry->object.vm_object)
				FUNC2(lobject);
			lobject = backing_object;
		}
		if (m == NULL) {
			if (!obj_locked || lobject != entry->object.vm_object)
				FUNC2(lobject);
			break;
		}
		if (FUNC6(m) &&
		    (m->flags & PG_FICTITIOUS) == 0)
			FUNC4(pmap, addr, m, entry->protection);
		if (!obj_locked || lobject != entry->object.vm_object)
			FUNC2(lobject);
	}
}