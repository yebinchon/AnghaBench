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
struct vop_add_writecount_args {scalar_t__ a_inc; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_writecount; } ;

/* Variables and functions */
 struct vnode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct vnode*,char*) ; 
 int FUNC4 (struct vnode*,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct vop_add_writecount_args *ap)
{
	struct vnode *lvp, *vp;
	int error;

	vp = ap->a_vp;
	lvp = FUNC0(vp);
	FUNC1(vp);
	/* text refs are bypassed to lowervp */
	FUNC3(vp->v_writecount >= 0, vp, ("wrong null writecount"));
	FUNC3(vp->v_writecount + ap->a_inc >= 0, vp,
	    ("wrong writecount inc %d", ap->a_inc));
	error = FUNC4(lvp, ap->a_inc);
	if (error == 0)
		vp->v_writecount += ap->a_inc;
	FUNC2(vp);
	return (error);
}