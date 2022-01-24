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
struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; int /*<<< orphan*/  v_interlock; int /*<<< orphan*/  v_vnlock; int /*<<< orphan*/  v_rl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *mem, int size)
{
	struct vnode *vp;
	struct bufobj *bo;

	vp = mem;
	FUNC3(&vp->v_rl);
	FUNC1(vp->v_vnlock);
	FUNC2(&vp->v_interlock);
	bo = &vp->v_bufobj;
	FUNC4(FUNC0(bo));
}