#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vop_remove_args {int /*<<< orphan*/  a_gen; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  null_flags; } ;

/* Variables and functions */
 struct vnode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  NULLV_DROP ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 TYPE_1__* FUNC2 (struct vnode*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

__attribute__((used)) static int
FUNC6(struct vop_remove_args *ap)
{
	int retval, vreleit;
	struct vnode *lvp, *vp;

	vp = ap->a_vp;
	if (FUNC4(vp) > 1) {
		lvp = FUNC0(vp);
		FUNC1(lvp);
		vreleit = 1;
	} else
		vreleit = 0;
	FUNC2(vp)->null_flags |= NULLV_DROP;
	retval = FUNC3(&ap->a_gen);
	if (vreleit != 0)
		FUNC5(lvp);
	return (retval);
}