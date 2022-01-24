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
struct vop_unset_text_args {struct vnode* a_vp; } ;
struct vnode {int v_writecount; int v_iflag; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int VI_TEXT_REF ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 

__attribute__((used)) static int
FUNC3(struct vop_unset_text_args *ap)
{
	struct vnode *vp;
	int error;
	bool last;

	vp = ap->a_vp;
	last = false;
	FUNC0(vp);
	if (vp->v_writecount < 0) {
		if ((vp->v_iflag & VI_TEXT_REF) != 0 &&
		    vp->v_writecount == -1) {
			last = true;
			vp->v_iflag &= ~VI_TEXT_REF;
		}
		vp->v_writecount++;
		error = 0;
	} else {
		error = EINVAL;
	}
	FUNC1(vp);
	if (last)
		FUNC2(vp);
	return (error);
}