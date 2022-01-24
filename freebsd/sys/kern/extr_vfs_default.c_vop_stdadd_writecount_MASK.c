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
 int ETXTBSY ; 
 int /*<<< orphan*/  MTX_DUPOK ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct vnode*,char*) ; 

__attribute__((used)) static int
FUNC3(struct vop_add_writecount_args *ap)
{
	struct vnode *vp;
	int error;

	vp = ap->a_vp;
	FUNC0(vp, MTX_DUPOK);
	if (vp->v_writecount < 0) {
		error = ETXTBSY;
	} else {
		FUNC2(vp->v_writecount + ap->a_inc >= 0, vp,
		    ("neg writecount increment %d", ap->a_inc));
		vp->v_writecount += ap->a_inc;
		error = 0;
	}
	FUNC1(vp);
	return (error);
}