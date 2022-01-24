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
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;

/* Variables and functions */
 int ETXTBSY ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct vnode*,char*) ; 
 int FUNC3 (struct vnode*,scalar_t__) ; 
 struct unionfs_node* FUNC4 (struct vnode*) ; 

__attribute__((used)) static int
FUNC5(struct vop_add_writecount_args *ap)
{
	struct vnode *tvp, *vp;
	struct unionfs_node *unp;
	int error;

	vp = ap->a_vp;
	unp = FUNC4(vp);
	tvp = unp->un_uppervp != NULL ? unp->un_uppervp : unp->un_lowervp;
	FUNC0(vp);
	/* text refs are bypassed to lowervp */
	FUNC2(vp->v_writecount >= 0, vp, ("wrong null writecount"));
	FUNC2(vp->v_writecount + ap->a_inc >= 0, vp,
	    ("wrong writecount inc %d", ap->a_inc));
	if (tvp != NULL)
		error = FUNC3(tvp, ap->a_inc);
	else if (vp->v_writecount < 0)
		error = ETXTBSY;
	else
		error = 0;
	if (error == 0)
		vp->v_writecount += ap->a_inc;
	FUNC1(vp);
	return (error);
}