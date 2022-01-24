#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_30__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_3__* vm_object_t ;
typedef  TYPE_4__* vm_map_t ;
typedef  TYPE_5__* vm_map_entry_t ;
typedef  int boolean_t ;
struct TYPE_35__ {TYPE_3__* vm_object; } ;
struct TYPE_40__ {int protection; int eflags; scalar_t__ end; scalar_t__ start; int /*<<< orphan*/ * cred; scalar_t__ offset; TYPE_1__ object; } ;
struct TYPE_39__ {int /*<<< orphan*/  pmap; } ;
struct TYPE_38__ {scalar_t__ charge; scalar_t__ type; scalar_t__ size; scalar_t__ backing_object_offset; struct TYPE_38__* backing_object; int /*<<< orphan*/ * cred; int /*<<< orphan*/  domain; int /*<<< orphan*/  pg_color; int /*<<< orphan*/  flags; } ;
struct TYPE_37__ {int /*<<< orphan*/ * td_ucred; } ;
struct TYPE_36__ {scalar_t__ pindex; int /*<<< orphan*/  valid; int /*<<< orphan*/  dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAP_ENTRY_COW ; 
 int MAP_ENTRY_NEEDS_COPY ; 
 int MAP_ENTRY_VN_EXEC ; 
 scalar_t__ OBJT_DEFAULT ; 
 scalar_t__ OBJT_SWAP ; 
 int /*<<< orphan*/  OBJ_COLORED ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 int PMAP_ENTER_WIRED ; 
 int /*<<< orphan*/  PQ_INACTIVE ; 
 int /*<<< orphan*/  VM_ALLOC_NORMAL ; 
 int /*<<< orphan*/  VM_ALLOC_WAITFAIL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_30__* curthread ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 TYPE_2__* FUNC15 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 TYPE_2__* FUNC18 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 

void
FUNC25(vm_map_t dst_map, vm_map_t src_map,
    vm_map_entry_t dst_entry, vm_map_entry_t src_entry,
    vm_ooffset_t *fork_charge)
{
	vm_object_t backing_object, dst_object, object, src_object;
	vm_pindex_t dst_pindex, pindex, src_pindex;
	vm_prot_t access, prot;
	vm_offset_t vaddr;
	vm_page_t dst_m;
	vm_page_t src_m;
	boolean_t upgrade;

#ifdef	lint
	src_map++;
#endif	/* lint */

	upgrade = src_entry == dst_entry;
	access = prot = dst_entry->protection;

	src_object = src_entry->object.vm_object;
	src_pindex = FUNC1(src_entry->offset);

	if (upgrade && (dst_entry->eflags & MAP_ENTRY_NEEDS_COPY) == 0) {
		dst_object = src_object;
		FUNC12(dst_object);
	} else {
		/*
		 * Create the top-level object for the destination entry. (Doesn't
		 * actually shadow anything - we copy the pages directly.)
		 */
		dst_object = FUNC10(OBJT_DEFAULT,
		    FUNC6(dst_entry->end - dst_entry->start));
#if VM_NRESERVLEVEL > 0
		dst_object->flags |= OBJ_COLORED;
		dst_object->pg_color = atop(dst_entry->start);
#endif
		dst_object->domain = src_object->domain;
		dst_object->charge = dst_entry->end - dst_entry->start;
	}

	FUNC4(dst_object);
	FUNC0(upgrade || dst_entry->object.vm_object == NULL,
	    ("vm_fault_copy_entry: vm_object not NULL"));
	if (src_object != dst_object) {
		dst_entry->object.vm_object = dst_object;
		dst_entry->offset = 0;
		dst_entry->eflags &= ~MAP_ENTRY_VN_EXEC;
	}
	if (fork_charge != NULL) {
		FUNC0(dst_entry->cred == NULL,
		    ("vm_fault_copy_entry: leaked swp charge"));
		dst_object->cred = curthread->td_ucred;
		FUNC7(dst_object->cred);
		*fork_charge += dst_object->charge;
	} else if ((dst_object->type == OBJT_DEFAULT ||
	    dst_object->type == OBJT_SWAP) &&
	    dst_object->cred == NULL) {
		FUNC0(dst_entry->cred != NULL, ("no cred for entry %p",
		    dst_entry));
		dst_object->cred = dst_entry->cred;
		dst_entry->cred = NULL;
	}

	/*
	 * If not an upgrade, then enter the mappings in the pmap as
	 * read and/or execute accesses.  Otherwise, enter them as
	 * write accesses.
	 *
	 * A writeable large page mapping is only created if all of
	 * the constituent small page mappings are modified. Marking
	 * PTEs as modified on inception allows promotion to happen
	 * without taking potentially large number of soft faults.
	 */
	if (!upgrade)
		access &= ~VM_PROT_WRITE;

	/*
	 * Loop through all of the virtual pages within the entry's
	 * range, copying each page from the source object to the
	 * destination object.  Since the source is wired, those pages
	 * must exist.  In contrast, the destination is pageable.
	 * Since the destination object doesn't share any backing storage
	 * with the source object, all of its pages must be dirtied,
	 * regardless of whether they can be written.
	 */
	for (vaddr = dst_entry->start, dst_pindex = 0;
	    vaddr < dst_entry->end;
	    vaddr += PAGE_SIZE, dst_pindex++) {
again:
		/*
		 * Find the page in the source object, and copy it in.
		 * Because the source is wired down, the page will be
		 * in memory.
		 */
		if (src_object != dst_object)
			FUNC2(src_object);
		object = src_object;
		pindex = src_pindex + dst_pindex;
		while ((src_m = FUNC18(object, pindex)) == NULL &&
		    (backing_object = object->backing_object) != NULL) {
			/*
			 * Unless the source mapping is read-only or
			 * it is presently being upgraded from
			 * read-only, the first object in the shadow
			 * chain should provide all of the pages.  In
			 * other words, this loop body should never be
			 * executed when the source mapping is already
			 * read/write.
			 */
			FUNC0((src_entry->protection & VM_PROT_WRITE) == 0 ||
			    upgrade,
			    ("vm_fault_copy_entry: main object missing page"));

			FUNC2(backing_object);
			pindex += FUNC1(object->backing_object_offset);
			if (object != dst_object)
				FUNC3(object);
			object = backing_object;
		}
		FUNC0(src_m != NULL, ("vm_fault_copy_entry: page missing"));

		if (object != dst_object) {
			/*
			 * Allocate a page in the destination object.
			 */
			dst_m = FUNC15(dst_object, (src_object ==
			    dst_object ? src_pindex : 0) + dst_pindex,
			    VM_ALLOC_NORMAL);
			if (dst_m == NULL) {
				FUNC5(dst_object);
				FUNC3(object);
				FUNC24(dst_object);
				FUNC4(dst_object);
				goto again;
			}
			FUNC8(src_m, dst_m);
			FUNC3(object);
			dst_m->dirty = dst_m->valid = src_m->valid;
		} else {
			dst_m = src_m;
			if (FUNC16(dst_m, VM_ALLOC_WAITFAIL) == 0)
				goto again;
			if (dst_m->pindex >= dst_object->size) {
				/*
				 * We are upgrading.  Index can occur
				 * out of bounds if the object type is
				 * vnode and the file was truncated.
				 */
				FUNC23(dst_m);
				break;
			}
		}
		FUNC5(dst_object);

		/*
		 * Enter it in the pmap. If a wired, copy-on-write
		 * mapping is being replaced by a write-enabled
		 * mapping, then wire that new mapping.
		 *
		 * The page can be invalid if the user called
		 * msync(MS_INVALIDATE) or truncated the backing vnode
		 * or shared memory object.  In this case, do not
		 * insert it into pmap, but still do the copy so that
		 * all copies of the wired map entry have similar
		 * backing pages.
		 */
		if (FUNC14(dst_m)) {
			FUNC9(dst_map->pmap, vaddr, dst_m, prot,
			    access | (upgrade ? PMAP_ENTER_WIRED : 0), 0);
		}

		/*
		 * Mark it no longer busy, and put it on the active list.
		 */
		FUNC4(dst_object);
		
		if (upgrade) {
			if (src_m != dst_m) {
				FUNC20(src_m, PQ_INACTIVE);
				FUNC21(dst_m);
			} else {
				FUNC0(FUNC22(dst_m),
				    ("dst_m %p is not wired", dst_m));
			}
		} else {
			FUNC17(dst_m);
			FUNC13(dst_m);
			FUNC19(dst_m);
		}
		FUNC23(dst_m);
	}
	FUNC5(dst_object);
	if (upgrade) {
		dst_entry->eflags &= ~(MAP_ENTRY_COW | MAP_ENTRY_NEEDS_COPY);
		FUNC11(src_object);
	}
}