#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
struct TYPE_16__ {scalar_t__ type; int ref_count; int shadow_count; int flags; struct TYPE_16__* backing_object; int /*<<< orphan*/  paging_in_progress; int /*<<< orphan*/ * handle; int /*<<< orphan*/  shadow_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ OBJT_DEFAULT ; 
 scalar_t__ OBJT_SWAP ; 
 scalar_t__ OBJT_VNODE ; 
 int OBJ_DEAD ; 
 int OBJ_ONEMAPPING ; 
 int OBJ_TMPFS_NODE ; 
 int /*<<< orphan*/  PVM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int FUNC12 (int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shadow_list ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 

void
FUNC20(vm_object_t object)
{
	vm_object_t temp;
	bool released;

	while (object != NULL) {
		FUNC4(object);
		if (object->type == OBJT_VNODE) {
			FUNC19(object);
			return;
		}

		/*
		 * If the reference count goes to 0 we start calling
		 * vm_object_terminate() on the object chain.  A ref count
		 * of 1 may be a special case depending on the shadow count
		 * being 0 or 1.  These cases require a write lock on the
		 * object.
		 */
		released = FUNC12(&object->ref_count, 2);
		FUNC5(object);
		if (released)
			return;

		FUNC7(object);
		FUNC0(object->ref_count != 0,
			("vm_object_deallocate: object deallocated too many times: %d", object->type));

		FUNC11(&object->ref_count);
		if (object->ref_count > 1) {
			FUNC8(object);
			return;
		} else if (object->ref_count == 1) {
			if (object->shadow_count == 0 &&
			    object->handle == NULL &&
			    (object->type == OBJT_DEFAULT ||
			    (object->type == OBJT_SWAP &&
			    (object->flags & OBJ_TMPFS_NODE) == 0))) {
				FUNC17(object, OBJ_ONEMAPPING);
			} else if ((object->shadow_count == 1) &&
			    (object->handle == NULL) &&
			    (object->type == OBJT_DEFAULT ||
			     object->type == OBJT_SWAP)) {
				vm_object_t robject;

				robject = FUNC1(&object->shadow_head);
				FUNC0(robject != NULL,
				    ("vm_object_deallocate: ref_count: %d, shadow_count: %d",
					 object->ref_count,
					 object->shadow_count));
				FUNC0((robject->flags & OBJ_TMPFS_NODE) == 0,
				    ("shadowed tmpfs v_object %p", object));
				if (!FUNC6(robject)) {
					/*
					 * Avoid a potential deadlock.
					 */
					FUNC10(&object->ref_count);
					FUNC8(object);
					/*
					 * More likely than not the thread
					 * holding robject's lock has lower
					 * priority than the current thread.
					 * Let the lower priority thread run.
					 */
					FUNC9("vmo_de", 1);
					continue;
				}
				/*
				 * Collapse object into its shadow unless its
				 * shadow is dead.  In that case, object will
				 * be deallocated by the thread that is
				 * deallocating its shadow.
				 */
				if ((robject->flags & OBJ_DEAD) == 0 &&
				    (robject->handle == NULL) &&
				    (robject->type == OBJT_DEFAULT ||
				     robject->type == OBJT_SWAP)) {

					FUNC10(&robject->ref_count);
retry:
					if (FUNC3(robject->paging_in_progress) > 0) {
						FUNC8(object);
						FUNC16(robject,
						    "objde1");
						temp = robject->backing_object;
						if (object == temp) {
							FUNC7(object);
							goto retry;
						}
					} else if (FUNC3(object->paging_in_progress) > 0) {
						FUNC8(robject);
						FUNC8(object);
						FUNC13(
						    &object->paging_in_progress,
						    "objde2", PVM);
						FUNC7(robject);
						temp = robject->backing_object;
						if (object == temp) {
							FUNC7(object);
							goto retry;
						}
					} else
						FUNC8(object);

					if (robject->ref_count == 1) {
						robject->ref_count--;
						object = robject;
						goto doterm;
					}
					object = robject;
					FUNC15(object);
					FUNC8(object);
					continue;
				}
				FUNC8(robject);
			}
			FUNC8(object);
			return;
		}
doterm:
		FUNC14(object);
		temp = object->backing_object;
		if (temp != NULL) {
			FUNC0((object->flags & OBJ_TMPFS_NODE) == 0,
			    ("shadowed tmpfs v_object 2 %p", object));
			FUNC7(temp);
			FUNC2(object, shadow_list);
			temp->shadow_count--;
			FUNC8(temp);
			object->backing_object = NULL;
		}
		/*
		 * Don't double-terminate, we could be in a termination
		 * recursion due to the terminate having to sync data
		 * to disk.
		 */
		if ((object->flags & OBJ_DEAD) == 0) {
			FUNC17(object, OBJ_DEAD);
			FUNC18(object);
		} else
			FUNC8(object);
		object = temp;
	}
}