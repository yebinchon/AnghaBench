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
struct vop_getextattr_args {int /*<<< orphan*/  a_td; int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_size; int /*<<< orphan*/  a_uio; int /*<<< orphan*/  a_name; int /*<<< orphan*/  a_attrnamespace; int /*<<< orphan*/  a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {int un_flag; struct vnode* un_lowervp; struct vnode* un_uppervp; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vnode* NULLVP ; 
 int UNIONFS_OPENEXTL ; 
 int UNIONFS_OPENEXTU ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unionfs_node* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vop_getextattr_args *ap)
{
	struct unionfs_node *unp;
	struct vnode   *vp;

	FUNC0(ap->a_vp);

	unp = FUNC2(ap->a_vp);
	vp = NULLVP;

	if (unp->un_flag & UNIONFS_OPENEXTU)
		vp = unp->un_uppervp;
	else if (unp->un_flag & UNIONFS_OPENEXTL)
		vp = unp->un_lowervp;

	if (vp == NULLVP)
		return (EOPNOTSUPP);

	return (FUNC1(vp, ap->a_attrnamespace, ap->a_name,
	    ap->a_uio, ap->a_size, ap->a_cred, ap->a_td));
}