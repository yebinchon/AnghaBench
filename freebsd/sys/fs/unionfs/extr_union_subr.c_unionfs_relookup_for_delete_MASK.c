#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_pnbuf; int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELETE ; 
 int ENOENT ; 
 int HASBUF ; 
 struct vnode* NULLVP ; 
 struct vnode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  namei_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,struct vnode**,struct componentname*,struct componentname*,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

int
FUNC6(struct vnode *dvp, struct componentname *cnp,
			    struct thread *td)
{
	int	error;
	struct vnode *udvp;
	struct vnode *vp;
	struct componentname cn;

	udvp = FUNC0(dvp);
	vp = NULLVP;

	error = FUNC3(udvp, &vp, cnp, &cn, td, cnp->cn_nameptr,
	    FUNC1(cnp->cn_nameptr), DELETE);
	if (error)
		return (error);

	if (vp == NULLVP)
		error = ENOENT;
	else {
		if (udvp == vp)
			FUNC5(vp);
		else
			FUNC4(vp);
	}

	if (cn.cn_flags & HASBUF) {
		FUNC2(namei_zone, cn.cn_pnbuf);
		cn.cn_flags &= ~HASBUF;
	}

	if (!error) {
		cn.cn_flags |= (cnp->cn_flags & HASBUF);
		cnp->cn_flags = cn.cn_flags;
	}

	return (error);
}