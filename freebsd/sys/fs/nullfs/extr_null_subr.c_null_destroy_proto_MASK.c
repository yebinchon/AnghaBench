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
struct vnode {int /*<<< orphan*/ * v_op; int /*<<< orphan*/  v_lock; int /*<<< orphan*/ * v_vnlock; int /*<<< orphan*/ * v_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  M_NULLFSNODE ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  dead_vnodeops ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

__attribute__((used)) static void
FUNC6(struct vnode *vp, void *xp)
{

	FUNC3(&vp->v_lock, LK_EXCLUSIVE, NULL);
	FUNC0(vp);
	vp->v_data = NULL;
	vp->v_vnlock = &vp->v_lock;
	vp->v_op = &dead_vnodeops;
	FUNC1(vp);
	FUNC4(vp);
	FUNC5(vp);
	FUNC2(xp, M_NULLFSNODE);
}