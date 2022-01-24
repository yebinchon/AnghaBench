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
struct vop_readlink_args {int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_uio; int /*<<< orphan*/  a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unionfs_node* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct vop_readlink_args *ap)
{
	int error;
	struct unionfs_node *unp;
	struct vnode   *vp;

	FUNC1("unionfs_readlink: enter\n");

	FUNC0(ap->a_vp);

	unp = FUNC3(ap->a_vp);
	vp = (unp->un_uppervp != NULLVP ? unp->un_uppervp : unp->un_lowervp);

	error = FUNC2(vp, ap->a_uio, ap->a_cred);

	FUNC1("unionfs_readlink: leave (%d)\n", error);

	return (error);
}