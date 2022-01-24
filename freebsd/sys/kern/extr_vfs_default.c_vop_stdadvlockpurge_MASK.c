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
struct vop_advlockpurge_args {struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/  v_lockf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ *) ; 

int
FUNC1(struct vop_advlockpurge_args *ap)
{
	struct vnode *vp;

	vp = ap->a_vp;
	FUNC0(vp, &vp->v_lockf);
	return (0);
}