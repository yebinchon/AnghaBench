#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vop_setlabel_args {int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_label; TYPE_2__* a_vp; struct thread* a_td; } ;
struct vnode {scalar_t__ v_type; } ;
struct unionfs_node {struct vnode* un_uppervp; struct vnode* un_lowervp; } ;
struct thread {int dummy; } ;
struct TYPE_5__ {TYPE_1__* v_mount; } ;
struct TYPE_4__ {int mnt_flag; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int MNT_RDONLY ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 scalar_t__ VREG ; 
 struct unionfs_node* FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct unionfs_node*,int,int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC5(struct vop_setlabel_args *ap)
{
	int		error;
	struct unionfs_node *unp;
	struct vnode   *uvp;
	struct vnode   *lvp;
	struct thread  *td;

	FUNC1("unionfs_setlabel: enter\n");

	FUNC0(ap->a_vp);

	error = EROFS;
	unp = FUNC3(ap->a_vp);
	uvp = unp->un_uppervp;
	lvp = unp->un_lowervp;
	td = ap->a_td;

	if (ap->a_vp->v_mount->mnt_flag & MNT_RDONLY)
		return (EROFS);

	if (uvp == NULLVP && lvp->v_type == VREG) {
		if ((error = FUNC4(unp, 1, ap->a_cred, td)) != 0)
			return (error);
		uvp = unp->un_uppervp;
	}

	if (uvp != NULLVP)
		error = FUNC2(uvp, ap->a_label, ap->a_cred, td);

	FUNC1("unionfs_setlabel: leave (%d)\n", error);

	return (error);
}