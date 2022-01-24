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
struct vop_getwritemount_args {int /*<<< orphan*/  a_mpp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int v_iflag; TYPE_1__* v_mount; } ;
struct TYPE_4__ {struct vnode* un_dvp; } ;
struct TYPE_3__ {int mnt_flag; } ;

/* Variables and functions */
 int EACCES ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int MNT_RDONLY ; 
 struct vnode* NULLVP ; 
 struct vnode* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int VI_FREE ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 TYPE_2__* FUNC6 (struct vnode*) ; 

__attribute__((used)) static int
FUNC7(struct vop_getwritemount_args *ap)
{
	int		error;
	struct vnode   *uvp;
	struct vnode   *vp;

	FUNC2("unionfs_getwritemount: enter\n");

	error = 0;
	vp = ap->a_vp;

	if (vp == NULLVP || (vp->v_mount->mnt_flag & MNT_RDONLY))
		return (EACCES);

	FUNC0(vp);

	uvp = FUNC1(vp);
	if (uvp == NULLVP && VREG == vp->v_type)
		uvp = FUNC1(FUNC6(vp)->un_dvp);

	if (uvp != NULLVP)
		error = FUNC5(uvp, ap->a_mpp);
	else {
		FUNC3(vp);
		if (vp->v_iflag & VI_FREE)
			error = EOPNOTSUPP;
		else
			error = EACCES;
		FUNC4(vp);
	}

	FUNC2("unionfs_getwritemount: leave (%d)\n", error);

	return (error);
}