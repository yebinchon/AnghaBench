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
struct vnode {scalar_t__ v_type; int v_vflag; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsexstuff {int dummy; } ;
struct TYPE_2__ {int cn_flags; } ;
struct nameidata {TYPE_1__ ni_cnd; struct vnode* ni_dvp; struct vnode* ni_vp; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SAVENAME ; 
 scalar_t__ VDIR ; 
 int FUNC1 (struct vnode*,struct vnode*,TYPE_1__*) ; 
 int VV_ROOT ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 

int
FUNC5(struct nameidata *ndp, int is_v4, struct ucred *cred,
    struct thread *p, struct nfsexstuff *exp)
{
	struct vnode *vp;
	int error = 0;

	vp = ndp->ni_vp;
	if (vp->v_type != VDIR) {
		error = ENOTDIR;
		goto out;
	}
	/*
	 * No rmdir "." please.
	 */
	if (ndp->ni_dvp == vp) {
		error = EINVAL;
		goto out;
	}
	/*
	 * The root of a mounted filesystem cannot be deleted.
	 */
	if (vp->v_vflag & VV_ROOT)
		error = EBUSY;
out:
	if (!error)
		error = FUNC1(ndp->ni_dvp, vp, &ndp->ni_cnd);
	if (ndp->ni_dvp == vp)
		FUNC4(ndp->ni_dvp);
	else
		FUNC3(ndp->ni_dvp);
	FUNC3(vp);
	if ((ndp->ni_cnd.cn_flags & SAVENAME) != 0)
		FUNC2(ndp);
	FUNC0(error);
	return (error);
}