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
struct vop_pathconf_args {int /*<<< orphan*/  a_retval; int /*<<< orphan*/  a_name; int /*<<< orphan*/  a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vnode* NULLVP ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unionfs_node* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vop_pathconf_args *ap)
{
	struct unionfs_node *unp;
	struct vnode   *vp;

	FUNC0(ap->a_vp);

	unp = FUNC2(ap->a_vp);
	vp = (unp->un_uppervp != NULLVP ? unp->un_uppervp : unp->un_lowervp);

	return (FUNC1(vp, ap->a_name, ap->a_retval));
}