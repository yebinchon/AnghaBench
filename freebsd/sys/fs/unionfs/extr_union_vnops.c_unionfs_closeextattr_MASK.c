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
struct vop_closeextattr_args {int /*<<< orphan*/  a_td; int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_commit; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {int un_flag; struct vnode* un_uppervp; struct vnode* un_lowervp; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int LK_DOWNGRADE ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LK_UPGRADE ; 
 struct vnode* NULLVP ; 
 int UNIONFS_OPENEXTL ; 
 int UNIONFS_OPENEXTU ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unionfs_node* FUNC2 (struct vnode*) ; 
 scalar_t__ FUNC3 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC4(struct vop_closeextattr_args *ap)
{
	int		error;
	struct unionfs_node *unp;
	struct vnode   *vp;
	struct vnode   *tvp;

	FUNC0(ap->a_vp);

	vp = ap->a_vp;
	unp = FUNC2(vp);
	tvp = NULLVP;

	if (unp->un_flag & UNIONFS_OPENEXTU)
		tvp = unp->un_uppervp;
	else if (unp->un_flag & UNIONFS_OPENEXTL)
		tvp = unp->un_lowervp;

	if (tvp == NULLVP)
		return (EOPNOTSUPP);

	error = FUNC1(tvp, ap->a_commit, ap->a_cred, ap->a_td);

	if (error == 0) {
		if (FUNC3(vp, LK_UPGRADE) != 0)
			FUNC3(vp, LK_EXCLUSIVE | LK_RETRY);
		if (tvp == unp->un_uppervp)
			unp->un_flag &= ~UNIONFS_OPENEXTU;
		else
			unp->un_flag &= ~UNIONFS_OPENEXTL;
		FUNC3(vp, LK_DOWNGRADE | LK_RETRY);
	}

	return (error);
}