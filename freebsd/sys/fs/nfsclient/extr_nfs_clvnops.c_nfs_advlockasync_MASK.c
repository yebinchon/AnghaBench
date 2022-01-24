#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_quad_t ;
struct vop_advlockasync_args {struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/  v_lockf; int /*<<< orphan*/  v_mount; } ;
struct TYPE_4__ {int nm_flag; } ;
struct TYPE_3__ {int /*<<< orphan*/  n_size; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  LK_SHARED ; 
 int NFSMNT_NOLOCKD ; 
 int FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vnode*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct vnode*) ; 
 int FUNC5 (struct vop_advlockasync_args*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct vop_advlockasync_args *ap)
{
	struct vnode *vp = ap->a_vp;
	u_quad_t size;
	int error;
	
	if (FUNC2(vp))
		return (EOPNOTSUPP);
	error = FUNC0(vp, LK_SHARED);
	if (error)
		return (error);
	if ((FUNC3(vp->v_mount)->nm_flag & NFSMNT_NOLOCKD) != 0) {
		size = FUNC4(vp)->n_size;
		FUNC1(vp, 0);
		error = FUNC5(ap, &(vp->v_lockf), size);
	} else {
		FUNC1(vp, 0);
		error = EOPNOTSUPP;
	}
	return (error);
}