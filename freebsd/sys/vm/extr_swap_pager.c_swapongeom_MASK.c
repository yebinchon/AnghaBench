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
struct vnode {scalar_t__ v_type; int v_iflag; int /*<<< orphan*/  v_rdev; } ;

/* Variables and functions */
 int ENOENT ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 scalar_t__ VCHR ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC5(struct vnode *vp)
{
	int error;

	FUNC4(vp, LK_EXCLUSIVE | LK_RETRY);
	if (vp->v_type != VCHR || (vp->v_iflag & VI_DOOMED) != 0) {
		error = ENOENT;
	} else {
		FUNC1();
		error = FUNC3(vp->v_rdev, vp);
		FUNC2();
	}
	FUNC0(vp, 0);
	return (error);
}