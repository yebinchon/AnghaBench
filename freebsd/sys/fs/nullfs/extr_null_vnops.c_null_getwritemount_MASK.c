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
struct vop_getwritemount_args {int /*<<< orphan*/ ** a_mpp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct null_node {struct vnode* null_lowervp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ **) ; 
 struct null_node* FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

__attribute__((used)) static int
FUNC6(struct vop_getwritemount_args *ap)
{
	struct null_node *xp;
	struct vnode *lowervp;
	struct vnode *vp;

	vp = ap->a_vp;
	FUNC0(vp);
	xp = FUNC3(vp);
	if (xp && (lowervp = xp->null_lowervp)) {
		FUNC5(lowervp);
		FUNC1(vp);
		FUNC2(lowervp, ap->a_mpp);
		FUNC4(lowervp);
	} else {
		FUNC1(vp);
		*(ap->a_mpp) = NULL;
	}
	return (0);
}