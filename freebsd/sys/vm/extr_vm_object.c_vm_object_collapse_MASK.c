#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
struct TYPE_18__ {scalar_t__ type; int flags; int ref_count; scalar_t__ resident_page_count; scalar_t__ size; scalar_t__ backing_object_offset; int /*<<< orphan*/  shadow_count; int /*<<< orphan*/  shadow_head; struct TYPE_18__* backing_object; int /*<<< orphan*/  rvq; int /*<<< orphan*/  paging_in_progress; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ OBJT_DEAD ; 
 scalar_t__ OBJT_DEFAULT ; 
 scalar_t__ OBJT_SWAP ; 
 int OBJ_DEAD ; 
 int OBJ_NOSPLIT ; 
 int /*<<< orphan*/  OBSC_COLLAPSE_WAIT ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  object_bypasses ; 
 int /*<<< orphan*/  object_collapses ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  shadow_list ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 

void
FUNC21(vm_object_t object)
{
	vm_object_t backing_object, new_backing_object;

	FUNC6(object);

	while (TRUE) {
		/*
		 * Verify that the conditions are right for collapse:
		 *
		 * The object exists and the backing object exists.
		 */
		if ((backing_object = object->backing_object) == NULL)
			break;

		/*
		 * we check the backing object first, because it is most likely
		 * not collapsable.
		 */
		FUNC7(backing_object);
		if (backing_object->handle != NULL ||
		    (backing_object->type != OBJT_DEFAULT &&
		    backing_object->type != OBJT_SWAP) ||
		    (backing_object->flags & (OBJ_DEAD | OBJ_NOSPLIT)) != 0 ||
		    object->handle != NULL ||
		    (object->type != OBJT_DEFAULT &&
		     object->type != OBJT_SWAP) ||
		    (object->flags & OBJ_DEAD)) {
			FUNC8(backing_object);
			break;
		}

		if (FUNC5(object->paging_in_progress) > 0 ||
		    FUNC5(backing_object->paging_in_progress) > 0) {
			FUNC17(object);
			FUNC8(backing_object);
			break;
		}

		/*
		 * We know that we can either collapse the backing object (if
		 * the parent is the only reference to it) or (perhaps) have
		 * the parent bypass the object if the parent happens to shadow
		 * all the resident pages in the entire backing object.
		 *
		 * This is ignoring pager-backed pages such as swap pages.
		 * vm_object_collapse_scan fails the shadowing test in this
		 * case.
		 */
		if (backing_object->ref_count == 1) {
			FUNC15(object, 1);
			FUNC15(backing_object, 1);

			/*
			 * If there is exactly one reference to the backing
			 * object, we can collapse it into the parent.
			 */
			FUNC13(object, OBSC_COLLAPSE_WAIT);

#if VM_NRESERVLEVEL > 0
			/*
			 * Break any reservations from backing_object.
			 */
			if (__predict_false(!LIST_EMPTY(&backing_object->rvq)))
				vm_reserv_break_all(backing_object);
#endif

			/*
			 * Move the pager from backing_object to object.
			 */
			if (backing_object->type == OBJT_SWAP) {
				/*
				 * swap_pager_copy() can sleep, in which case
				 * the backing_object's and object's locks are
				 * released and reacquired.
				 * Since swap_pager_copy() is being asked to
				 * destroy the source, it will change the
				 * backing_object's type to OBJT_DEFAULT.
				 */
				FUNC12(
				    backing_object,
				    object,
				    FUNC4(object->backing_object_offset), TRUE);
			}
			/*
			 * Object now shadows whatever backing_object did.
			 * Note that the reference to 
			 * backing_object->backing_object moves from within 
			 * backing_object to within object.
			 */
			FUNC3(object, shadow_list);
			backing_object->shadow_count--;
			if (backing_object->backing_object) {
				FUNC7(backing_object->backing_object);
				FUNC3(backing_object, shadow_list);
				FUNC2(
				    &backing_object->backing_object->shadow_head,
				    object, shadow_list);
				/*
				 * The shadow_count has not changed.
				 */
				FUNC8(backing_object->backing_object);
			}
			object->backing_object = backing_object->backing_object;
			object->backing_object_offset +=
			    backing_object->backing_object_offset;

			/*
			 * Discard backing_object.
			 *
			 * Since the backing object has no pages, no pager left,
			 * and no object references within it, all that is
			 * necessary is to dispose of it.
			 */
			FUNC0(backing_object->ref_count == 1, (
"backing_object %p was somehow re-referenced during collapse!",
			    backing_object));
			FUNC16(backing_object);
			backing_object->type = OBJT_DEAD;
			backing_object->ref_count = 0;
			FUNC8(backing_object);
			FUNC14(backing_object);

			FUNC16(object);
			FUNC10(object_collapses, 1);
		} else {
			/*
			 * If we do not entirely shadow the backing object,
			 * there is nothing we can do so we give up.
			 */
			if (object->resident_page_count != object->size &&
			    !FUNC19(object)) {
				FUNC8(backing_object);
				break;
			}

			/*
			 * Make the parent shadow the next object in the
			 * chain.  Deallocating backing_object will not remove
			 * it, since its reference count is at least 2.
			 */
			FUNC3(object, shadow_list);
			backing_object->shadow_count--;

			new_backing_object = backing_object->backing_object;
			if ((object->backing_object = new_backing_object) != NULL) {
				FUNC7(new_backing_object);
				FUNC2(
				    &new_backing_object->shadow_head,
				    object,
				    shadow_list
				);
				new_backing_object->shadow_count++;
				FUNC18(new_backing_object);
				FUNC8(new_backing_object);
				object->backing_object_offset +=
					backing_object->backing_object_offset;
			}

			/*
			 * Drop the reference count on backing_object. Since
			 * its ref_count was at least 2, it will not vanish.
			 */
			FUNC11(&backing_object->ref_count);
			FUNC8(backing_object);
			FUNC10(object_bypasses, 1);
		}

		/*
		 * Try again with this object's new backing object.
		 */
	}
}