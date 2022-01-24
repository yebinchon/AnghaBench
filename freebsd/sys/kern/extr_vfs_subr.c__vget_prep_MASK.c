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
struct vnode {scalar_t__ v_type; scalar_t__ v_usecount; } ;
typedef  enum vgetstate { ____Placeholder_vgetstate } vgetstate ;

/* Variables and functions */
 scalar_t__ VCHR ; 
 int VGET_HOLDCNT ; 
 int VGET_USECOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

__attribute__((used)) static enum vgetstate
FUNC8(struct vnode *vp, bool interlock)
{
	enum vgetstate vs;

	if (FUNC2(vp->v_type != VCHR)) {
		if (FUNC5(&vp->v_usecount)) {
			vs = VGET_USECOUNT;
		} else {
			FUNC3(vp, interlock);
			vs = VGET_HOLDCNT;
		}
	} else {
		if (!interlock)
			FUNC0(vp);
		if (vp->v_usecount == 0) {
			FUNC7(vp);
			vs = VGET_HOLDCNT;
		} else {
			FUNC6(vp);
			FUNC4(&vp->v_usecount);
			vs = VGET_USECOUNT;
		}
		if (!interlock)
			FUNC1(vp);
	}
	return (vs);
}