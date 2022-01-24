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
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_1__* vm_object_t ;
struct vnode {int v_vflag; } ;
struct mount {int dummy; } ;
typedef  int boolean_t ;
struct TYPE_8__ {scalar_t__ backing_object_offset; scalar_t__ size; scalar_t__ type; struct vnode* handle; struct TYPE_8__* backing_object; } ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int OBJPC_INVAL ; 
 int OBJPC_SYNC ; 
 int OBJPR_CLEANONLY ; 
 int OBJPR_NOTMAPPED ; 
 scalar_t__ OBJT_DEVICE ; 
 scalar_t__ OBJT_VNODE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ PAGE_MASK ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 int VV_NOSYNC ; 
 int /*<<< orphan*/  V_WAIT ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  curthread ; 
 scalar_t__ old_msync ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,struct mount**,int /*<<< orphan*/ ) ; 

boolean_t
FUNC13(vm_object_t object, vm_ooffset_t offset, vm_size_t size,
    boolean_t syncio, boolean_t invalidate)
{
	vm_object_t backing_object;
	struct vnode *vp;
	struct mount *mp;
	int error, flags, fsync_after;
	boolean_t res;

	if (object == NULL)
		return (TRUE);
	res = TRUE;
	error = 0;
	FUNC2(object);
	while ((backing_object = object->backing_object) != NULL) {
		FUNC2(backing_object);
		offset += object->backing_object_offset;
		FUNC3(object);
		object = backing_object;
		if (object->size < FUNC1(offset + size))
			size = FUNC0(object->size) - offset;
	}
	/*
	 * Flush pages if writing is allowed, invalidate them
	 * if invalidation requested.  Pages undergoing I/O
	 * will be ignored by vm_object_page_remove().
	 *
	 * We cannot lock the vnode and then wait for paging
	 * to complete without deadlocking against vm_fault.
	 * Instead we simply call vm_object_page_remove() and
	 * allow it to block internally on a page-by-page
	 * basis when it encounters pages undergoing async
	 * I/O.
	 */
	if (object->type == OBJT_VNODE &&
	    FUNC7(object) != 0 &&
	    ((vp = object->handle)->v_vflag & VV_NOSYNC) == 0) {
		FUNC3(object);
		(void) FUNC12(vp, &mp, V_WAIT);
		FUNC11(vp, LK_EXCLUSIVE | LK_RETRY);
		if (syncio && !invalidate && offset == 0 &&
		    FUNC6(size) == object->size) {
			/*
			 * If syncing the whole mapping of the file,
			 * it is faster to schedule all the writes in
			 * async mode, also allowing the clustering,
			 * and then wait for i/o to complete.
			 */
			flags = 0;
			fsync_after = TRUE;
		} else {
			flags = (syncio || invalidate) ? OBJPC_SYNC : 0;
			flags |= invalidate ? (OBJPC_SYNC | OBJPC_INVAL) : 0;
			fsync_after = FALSE;
		}
		FUNC2(object);
		res = FUNC8(object, offset, offset + size,
		    flags);
		FUNC3(object);
		if (fsync_after)
			error = FUNC4(vp, MNT_WAIT, curthread);
		FUNC5(vp, 0);
		FUNC10(mp);
		if (error != 0)
			res = FALSE;
		FUNC2(object);
	}
	if ((object->type == OBJT_VNODE ||
	     object->type == OBJT_DEVICE) && invalidate) {
		if (object->type == OBJT_DEVICE)
			/*
			 * The option OBJPR_NOTMAPPED must be passed here
			 * because vm_object_page_remove() cannot remove
			 * unmanaged mappings.
			 */
			flags = OBJPR_NOTMAPPED;
		else if (old_msync)
			flags = 0;
		else
			flags = OBJPR_CLEANONLY;
		FUNC9(object, FUNC1(offset),
		    FUNC1(offset + size + PAGE_MASK), flags);
	}
	FUNC3(object);
	return (res);
}