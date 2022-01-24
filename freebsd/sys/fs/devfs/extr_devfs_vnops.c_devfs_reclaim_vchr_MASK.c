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
struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; scalar_t__ v_usecount; struct cdev* v_rdev; } ;
struct cdev {int /*<<< orphan*/  si_usecount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VCHR ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct vop_reclaim_args*) ; 

__attribute__((used)) static int
FUNC7(struct vop_reclaim_args *ap)
{
	struct vnode *vp;
	struct cdev *dev;

	vp = ap->a_vp;
	FUNC0(vp->v_type == VCHR);

	FUNC6(ap);

	FUNC1(vp);
	FUNC3();
	dev = vp->v_rdev;
	vp->v_rdev = NULL;
	if (dev != NULL)
		dev->si_usecount -= vp->v_usecount;
	FUNC5();
	FUNC2(vp);
	if (dev != NULL)
		FUNC4(dev);
	return (0);
}