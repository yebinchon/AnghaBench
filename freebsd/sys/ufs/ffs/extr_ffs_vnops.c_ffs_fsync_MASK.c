#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vop_fsync_args {int /*<<< orphan*/  a_waitfor; struct vnode* a_vp; } ;
struct TYPE_2__ {scalar_t__ bv_cnt; } ;
struct bufobj {scalar_t__ bo_numoutput; TYPE_1__ bo_dirty; } ;
struct vnode {scalar_t__ v_type; struct bufobj v_bufobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 scalar_t__ FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 scalar_t__ VDIR ; 
 scalar_t__ VREG ; 
 int FUNC3 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vnode*) ; 

__attribute__((used)) static int
FUNC5(struct vop_fsync_args *ap)
{
	struct vnode *vp;
	struct bufobj *bo;
	int error;

	vp = ap->a_vp;
	bo = &vp->v_bufobj;
retry:
	error = FUNC3(vp, ap->a_waitfor, 0);
	if (error)
		return (error);
	if (ap->a_waitfor == MNT_WAIT && FUNC2(vp)) {
		error = FUNC4(vp);
		if (error)
			return (error);

		/*
		 * The softdep_fsync() function may drop vp lock,
		 * allowing for dirty buffers to reappear on the
		 * bo_dirty list. Recheck and resync as needed.
		 */
		FUNC0(bo);
		if ((vp->v_type == VREG || vp->v_type == VDIR) &&
		    (bo->bo_numoutput > 0 || bo->bo_dirty.bv_cnt > 0)) {
			FUNC1(bo);
			goto retry;
		}
		FUNC1(bo);
	}
	return (0);
}