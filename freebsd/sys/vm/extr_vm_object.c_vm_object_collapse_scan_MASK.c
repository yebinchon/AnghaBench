#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_29__ {scalar_t__ size; scalar_t__ type; int /*<<< orphan*/  memq; int /*<<< orphan*/  backing_object_offset; struct TYPE_29__* backing_object; } ;
struct TYPE_28__ {scalar_t__ pindex; TYPE_2__* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ OBJT_SWAP ; 
 int /*<<< orphan*/  OBJ_DEAD ; 
 int OBSC_COLLAPSE_WAIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_1__* FUNC10 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,TYPE_2__*,TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static bool
FUNC18(vm_object_t object, int op)
{
	vm_object_t backing_object;
	vm_page_t next, p, pp;
	vm_pindex_t backing_offset_index, new_pindex;

	FUNC4(object);
	FUNC4(object->backing_object);

	backing_object = object->backing_object;
	backing_offset_index = FUNC1(object->backing_object_offset);

	/*
	 * Initial conditions
	 */
	if ((op & OBSC_COLLAPSE_WAIT) != 0)
		FUNC8(backing_object, OBJ_DEAD);

	/*
	 * Our scan
	 */
	for (p = FUNC2(&backing_object->memq); p != NULL; p = next) {
		next = FUNC3(p, listq);
		new_pindex = p->pindex - backing_offset_index;

		/*
		 * Check for busy page
		 */
		if (FUNC14(p) == 0) {
			next = FUNC7(object, p, next, op);
			continue;
		}

		FUNC0(p->object == backing_object,
		    ("vm_object_collapse_scan: object mismatch"));

		if (p->pindex < backing_offset_index ||
		    new_pindex >= object->size) {
			if (backing_object->type == OBJT_SWAP)
				FUNC6(backing_object, p->pindex,
				    1);

			FUNC0(!FUNC5(p),
			    ("freeing mapped page %p", p));
			if (FUNC12(p))
				FUNC9(p);
			else
				FUNC15(p);
			continue;
		}

		pp = FUNC10(object, new_pindex);
		if (pp != NULL && FUNC14(pp) == 0) {
			FUNC15(p);
			/*
			 * The page in the parent is busy and possibly not
			 * (yet) valid.  Until its state is finalized by the
			 * busy bit owner, we can't tell whether it shadows the
			 * original page.  Therefore, we must either skip it
			 * and the original (backing_object) page or wait for
			 * its state to be finalized.
			 *
			 * This is due to a race with vm_fault() where we must
			 * unbusy the original (backing_obj) page before we can
			 * (re)lock the parent.  Hence we can get here.
			 */
			next = FUNC7(object, pp, next,
			    op);
			continue;
		}

		FUNC0(pp == NULL || !FUNC11(pp),
		    ("unbusy invalid page %p", pp));

		if (pp != NULL || FUNC16(object, new_pindex, NULL,
			NULL)) {
			/*
			 * The page already exists in the parent OR swap exists
			 * for this location in the parent.  Leave the parent's
			 * page alone.  Destroy the original page from the
			 * backing object.
			 */
			if (backing_object->type == OBJT_SWAP)
				FUNC6(backing_object, p->pindex,
				    1);
			FUNC0(!FUNC5(p),
			    ("freeing mapped page %p", p));
			if (FUNC12(p))
				FUNC9(p);
			else
				FUNC15(p);
			if (pp != NULL)
				FUNC15(pp);
			continue;
		}

		/*
		 * Page does not exist in parent, rename the page from the
		 * backing object to the main object.
		 *
		 * If the page was mapped to a process, it can remain mapped
		 * through the rename.  vm_page_rename() will dirty the page.
		 */
		if (FUNC13(p, object, new_pindex)) {
			FUNC15(p);
			if (pp != NULL)
				FUNC15(pp);
			next = FUNC7(object, NULL, next,
			    op);
			continue;
		}

		/* Use the old pindex to free the right page. */
		if (backing_object->type == OBJT_SWAP)
			FUNC6(backing_object,
			    new_pindex + backing_offset_index, 1);

#if VM_NRESERVLEVEL > 0
		/*
		 * Rename the reservation.
		 */
		vm_reserv_rename(p, object, backing_object,
		    backing_offset_index);
#endif
		FUNC15(p);
	}
	return (true);
}