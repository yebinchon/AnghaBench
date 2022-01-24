#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bo_flag; } ;
struct vnode {struct vm_object* v_object; TYPE_1__ v_bufobj; } ;
struct vm_object {scalar_t__ type; scalar_t__ ref_count; int flags; struct vnode* handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  BO_DEAD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  OBJPC_SYNC ; 
 scalar_t__ OBJT_VNODE ; 
 int OBJ_DEAD ; 
 int /*<<< orphan*/  FUNC5 (struct vm_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_object*) ; 
 int /*<<< orphan*/  V_SAVE ; 
 int /*<<< orphan*/  FUNC7 (struct vm_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vm_object*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_object*) ; 
 int /*<<< orphan*/  FUNC12 (struct vm_object*) ; 

void
FUNC13(struct vnode *vp)
{
	struct vm_object *obj;

	obj = vp->v_object;
	if (obj == NULL || obj->handle != vp)
		return;
	FUNC0(vp, "vnode_destroy_vobject");
	FUNC5(obj);
	FUNC4(obj->type == OBJT_VNODE);
	FUNC7(obj);
	if (obj->ref_count == 0) {
		/*
		 * don't double-terminate the object
		 */
		if ((obj->flags & OBJ_DEAD) == 0) {
			FUNC10(obj, OBJ_DEAD);

			/*
			 * Clean pages and flush buffers.
			 */
			FUNC9(obj, 0, 0, OBJPC_SYNC);
			FUNC6(obj);

			FUNC8(vp, V_SAVE, 0, 0);

			FUNC1(&vp->v_bufobj);
			vp->v_bufobj.bo_flag |= BO_DEAD;
			FUNC2(&vp->v_bufobj);

			FUNC5(obj);
			FUNC11(obj);
		} else {
			/*
			 * Waiters were already handled during object
			 * termination.  The exclusive vnode lock hopefully
			 * prevented new waiters from referencing the dying
			 * object.
			 */
			vp->v_object = NULL;
			FUNC6(obj);
		}
	} else {
		/*
		 * Woe to the process that tries to page now :-).
		 */
		FUNC12(obj);
		FUNC6(obj);
	}
	FUNC3(vp->v_object == NULL, ("vp %p obj %p", vp, vp->v_object));
}