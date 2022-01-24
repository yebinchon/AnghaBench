#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {scalar_t__ type; int flags; int ref_count; scalar_t__ size; scalar_t__ charge; int /*<<< orphan*/ * cred; int /*<<< orphan*/ * backing_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ OBJT_DEFAULT ; 
 scalar_t__ OBJT_SWAP ; 
 int OBJ_NOSPLIT ; 
 int OBJ_ONEMAPPING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

boolean_t
FUNC9(vm_object_t prev_object, vm_ooffset_t prev_offset,
    vm_size_t prev_size, vm_size_t next_size, boolean_t reserved)
{
	vm_pindex_t next_pindex;

	if (prev_object == NULL)
		return (TRUE);
	FUNC2(prev_object);
	if ((prev_object->type != OBJT_DEFAULT &&
	    prev_object->type != OBJT_SWAP) ||
	    (prev_object->flags & OBJ_NOSPLIT) != 0) {
		FUNC3(prev_object);
		return (FALSE);
	}

	/*
	 * Try to collapse the object first
	 */
	FUNC7(prev_object);

	/*
	 * Can't coalesce if: . more than one reference . paged out . shadows
	 * another object . has a copy elsewhere (any of which mean that the
	 * pages not mapped to prev_entry may be in use anyway)
	 */
	if (prev_object->backing_object != NULL) {
		FUNC3(prev_object);
		return (FALSE);
	}

	prev_size >>= PAGE_SHIFT;
	next_size >>= PAGE_SHIFT;
	next_pindex = FUNC1(prev_offset) + prev_size;

	if (prev_object->ref_count > 1 &&
	    prev_object->size != next_pindex &&
	    (prev_object->flags & OBJ_ONEMAPPING) == 0) {
		FUNC3(prev_object);
		return (FALSE);
	}

	/*
	 * Account for the charge.
	 */
	if (prev_object->cred != NULL) {

		/*
		 * If prev_object was charged, then this mapping,
		 * although not charged now, may become writable
		 * later. Non-NULL cred in the object would prevent
		 * swap reservation during enabling of the write
		 * access, so reserve swap now. Failed reservation
		 * cause allocation of the separate object for the map
		 * entry, and swap reservation for this entry is
		 * managed in appropriate time.
		 */
		if (!reserved && !FUNC6(FUNC4(next_size),
		    prev_object->cred)) {
			FUNC3(prev_object);
			return (FALSE);
		}
		prev_object->charge += FUNC4(next_size);
	}

	/*
	 * Remove any pages that may still be in the object from a previous
	 * deallocation.
	 */
	if (next_pindex < prev_object->size) {
		FUNC8(prev_object, next_pindex, next_pindex +
		    next_size, 0);
		if (prev_object->type == OBJT_SWAP)
			FUNC5(prev_object,
					     next_pindex, next_size);
#if 0
		if (prev_object->cred != NULL) {
			KASSERT(prev_object->charge >=
			    ptoa(prev_object->size - next_pindex),
			    ("object %p overcharged 1 %jx %jx", prev_object,
				(uintmax_t)next_pindex, (uintmax_t)next_size));
			prev_object->charge -= ptoa(prev_object->size -
			    next_pindex);
		}
#endif
	}

	/*
	 * Extend the object if necessary.
	 */
	if (next_pindex + next_size > prev_object->size)
		prev_object->size = next_pindex + next_size;

	FUNC3(prev_object);
	return (TRUE);
}