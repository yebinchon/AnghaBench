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
struct vop_close_args {struct vnode* a_vp; } ;
struct vnode {int v_usecount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 

__attribute__((used)) static int
FUNC3(struct vop_close_args *ap)
{
	struct vnode *vp = ap->a_vp;

	FUNC0(vp);
	if (vp->v_usecount > 1)
		FUNC2(vp);
	FUNC1(vp);
	return (0);
}