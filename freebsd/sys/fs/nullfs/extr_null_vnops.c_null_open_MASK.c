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
struct vop_open_args {int /*<<< orphan*/  a_gen; struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/  v_object; } ;

/* Variables and functions */
 struct vnode* FUNC0 (struct vnode*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct vop_open_args *ap)
{
	int retval;
	struct vnode *vp, *ldvp;

	vp = ap->a_vp;
	ldvp = FUNC0(vp);
	retval = FUNC1(&ap->a_gen);
	if (retval == 0)
		vp->v_object = ldvp->v_object;
	return (retval);
}