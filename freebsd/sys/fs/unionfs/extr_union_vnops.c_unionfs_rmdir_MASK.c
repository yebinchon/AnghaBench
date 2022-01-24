#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vop_rmdir_args {TYPE_1__* a_vp; TYPE_1__* a_dvp; struct componentname* a_cnp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {int /*<<< orphan*/  un_path; struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct unionfs_mount {scalar_t__ um_whitemode; } ;
struct thread {int dummy; } ;
struct componentname {int /*<<< orphan*/  cn_flags; int /*<<< orphan*/  cn_cred; } ;
struct TYPE_6__ {int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOWHITEOUT ; 
 int EOPNOTSUPP ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct unionfs_mount* FUNC1 (int /*<<< orphan*/ ) ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ UNIONFS_WHITE_ALWAYS ; 
 int FUNC3 (struct vnode*,struct vnode*,struct componentname*) ; 
 struct unionfs_node* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct thread* curthread ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC7 (struct vnode*,struct componentname*,struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,struct componentname*,struct thread*) ; 

__attribute__((used)) static int
FUNC9(struct vop_rmdir_args *ap)
{
	int		error;
	struct unionfs_node *dunp;
	struct unionfs_node *unp;
	struct unionfs_mount *ump;
	struct componentname *cnp;
	struct thread  *td;
	struct vnode   *udvp;
	struct vnode   *uvp;
	struct vnode   *lvp;

	FUNC2("unionfs_rmdir: enter\n");

	FUNC0(ap->a_dvp);
	FUNC0(ap->a_vp);

	error = 0;
	dunp = FUNC4(ap->a_dvp);
	unp = FUNC4(ap->a_vp);
	cnp = ap->a_cnp;
	td = curthread;
	udvp = dunp->un_uppervp;
	uvp = unp->un_uppervp;
	lvp = unp->un_lowervp;

	if (udvp == NULLVP)
		return (EROFS);

	if (udvp == uvp)
		return (EOPNOTSUPP);

	if (uvp != NULLVP) {
		if (lvp != NULLVP) {
			error = FUNC6(ap->a_vp, cnp->cn_cred, td);
			if (error != 0)
				return (error);
		}
		ump = FUNC1(ap->a_vp->v_mount);
		if (ump->um_whitemode == UNIONFS_WHITE_ALWAYS || lvp != NULLVP)
			cnp->cn_flags |= DOWHITEOUT;
		error = FUNC8(ap->a_dvp, cnp, td);
		if (!error)
			error = FUNC3(udvp, uvp, cnp);
	}
	else if (lvp != NULLVP)
		error = FUNC7(udvp, cnp, td, unp->un_path);

	if (error == 0) {
		FUNC5(ap->a_dvp);
		FUNC5(ap->a_vp);
	}

	FUNC2("unionfs_rmdir: leave (%d)\n", error);

	return (error);
}