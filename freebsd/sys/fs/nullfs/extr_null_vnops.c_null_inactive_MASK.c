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
struct vop_inactive_args {struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/ * v_object; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 

__attribute__((used)) static int
FUNC2(struct vop_inactive_args *ap)
{
	struct vnode *vp;

	vp = ap->a_vp;
	if (FUNC0(vp)) {
		vp->v_object = NULL;
		FUNC1(vp);
	}
	return (0);
}