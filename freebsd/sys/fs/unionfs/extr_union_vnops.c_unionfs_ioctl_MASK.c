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
struct vop_ioctl_args {int /*<<< orphan*/  a_td; int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_fflag; int /*<<< orphan*/  a_data; int /*<<< orphan*/  a_command; int /*<<< orphan*/  a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node_status {scalar_t__ uns_upper_opencnt; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LK_EXCLUSIVE ; 
 int /*<<< orphan*/  LK_RELEASE ; 
 int LK_RETRY ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unionfs_node* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct unionfs_node*,int /*<<< orphan*/ ,struct unionfs_node_status**) ; 
 int /*<<< orphan*/  FUNC6 (struct unionfs_node*,struct unionfs_node_status*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct vop_ioctl_args *ap)
{
	int error;
	struct unionfs_node *unp;
	struct unionfs_node_status *unsp;
	struct vnode   *ovp;

	FUNC1("unionfs_ioctl: enter\n");

	FUNC0(ap->a_vp);

 	FUNC7(ap->a_vp, LK_EXCLUSIVE | LK_RETRY);
	unp = FUNC4(ap->a_vp);
	FUNC5(unp, ap->a_td, &unsp);
	ovp = (unsp->uns_upper_opencnt ? unp->un_uppervp : unp->un_lowervp);
	FUNC6(unp, unsp);
	FUNC3(ap->a_vp, LK_RELEASE);

	if (ovp == NULLVP)
		return (EBADF);

	error = FUNC2(ovp, ap->a_command, ap->a_data, ap->a_fflag,
	    ap->a_cred, ap->a_td);

	FUNC1("unionfs_ioctl: leave (%d)\n", error);

	return (error);
}