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
struct vop_unlock_args {int a_flags; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_uppervp; struct vnode* un_lowervp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int LK_RELEASE ; 
 struct vnode* NULLVP ; 
 int FUNC1 (struct vnode*,int) ; 
 struct unionfs_node* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int FUNC5 (struct vop_unlock_args*) ; 

__attribute__((used)) static int
FUNC6(struct vop_unlock_args *ap)
{
	int		error;
	int		flags;
	int		uhold;
	struct vnode   *vp;
	struct vnode   *lvp;
	struct vnode   *uvp;
	struct unionfs_node *unp;

	FUNC0(ap->a_vp);

	error = 0;
	uhold = 0;
	flags = ap->a_flags | LK_RELEASE;
	vp = ap->a_vp;

	unp = FUNC2(vp);
	if (unp == NULL)
		goto unionfs_unlock_null_vnode;
	lvp = unp->un_lowervp;
	uvp = unp->un_uppervp;

	if (lvp != NULLVP) {
		FUNC4(lvp);
		error = FUNC1(lvp, flags);
	}

	if (error == 0 && uvp != NULLVP) {
		FUNC4(uvp);
		uhold = 1;
		error = FUNC1(uvp, flags);
	}

	if (lvp != NULLVP)
		FUNC3(lvp);
	if (uhold != 0)
		FUNC3(uvp);

	return error;

unionfs_unlock_null_vnode:
	return (FUNC5(ap));
}