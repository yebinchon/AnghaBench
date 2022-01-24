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
struct vop_link_args {struct vnode* a_tdvp; struct vnode* a_vp; struct componentname* a_cnp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/ * v_op; } ;
struct unionfs_node {struct vnode* un_uppervp; } ;
struct thread {int dummy; } ;
struct componentname {int /*<<< orphan*/  cn_cred; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct vnode*,struct vnode*,struct componentname*) ; 
 scalar_t__ VREG ; 
 struct unionfs_node* FUNC3 (struct vnode*) ; 
 struct thread* curthread ; 
 int FUNC4 (struct unionfs_node*,int,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC5 (struct vnode*,struct componentname*,struct thread*) ; 
 int /*<<< orphan*/  unionfs_vnodeops ; 

__attribute__((used)) static int
FUNC6(struct vop_link_args *ap)
{
	int		error;
	int		needrelookup;
	struct unionfs_node *dunp;
	struct unionfs_node *unp;
	struct vnode   *udvp;
	struct vnode   *uvp;
	struct componentname *cnp;
	struct thread  *td;

	FUNC1("unionfs_link: enter\n");

	FUNC0(ap->a_tdvp);
	FUNC0(ap->a_vp);

	error = 0;
	needrelookup = 0;
	dunp = FUNC3(ap->a_tdvp);
	unp = NULL;
	udvp = dunp->un_uppervp;
	uvp = NULLVP;
	cnp = ap->a_cnp;
	td = curthread;

	if (udvp == NULLVP)
		return (EROFS);

	if (ap->a_vp->v_op != &unionfs_vnodeops)
		uvp = ap->a_vp;
	else {
		unp = FUNC3(ap->a_vp);

		if (unp->un_uppervp == NULLVP) {
			if (ap->a_vp->v_type != VREG)
				return (EOPNOTSUPP);

			error = FUNC4(unp, 1, cnp->cn_cred, td);
			if (error != 0)
				return (error);
			needrelookup = 1;
		}
		uvp = unp->un_uppervp;
	}

	if (needrelookup != 0)
		error = FUNC5(ap->a_tdvp, cnp, td);

	if (error == 0)
		error = FUNC2(udvp, uvp, cnp);

	FUNC1("unionfs_link: leave (%d)\n", error);

	return (error);
}