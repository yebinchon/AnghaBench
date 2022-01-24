#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_1__* vm_object_t ;
struct vnode {TYPE_1__* v_object; } ;
struct vattr {scalar_t__ va_size; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
typedef  scalar_t__ off_t ;
struct TYPE_5__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct vnode*) ; 
 scalar_t__ FUNC7 (struct vnode*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct vnode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 

int
FUNC10(struct vnode *vp, off_t isize, struct thread *td)
{
	vm_object_t object;
	vm_ooffset_t size = isize;
	struct vattr va;

	if (!FUNC7(vp, NULL) && FUNC6(vp) == FALSE)
		return (0);

	object = vp->v_object;
	if (object != NULL)
		return (0);

	if (size == 0) {
		if (FUNC7(vp, NULL)) {
			size = FUNC0(INT_MAX);
		} else {
			if (FUNC4(vp, &va, td->td_ucred))
				return (0);
			size = va.va_size;
		}
	}

	object = FUNC8(vp, size, 0, 0, td->td_ucred);
	/*
	 * Dereference the reference we just created.  This assumes
	 * that the object is associated with the vp.
	 */
	FUNC2(object);
	FUNC5(&object->ref_count);
	FUNC3(object);
	FUNC9(vp);

	FUNC1(vp->v_object != NULL, ("vnode_create_vobject: NULL object"));

	return (0);
}