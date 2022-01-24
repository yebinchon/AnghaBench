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
struct vop_close_args {struct vnode* a_vp; } ;
struct vnode {int v_usecount; } ;
struct timespec {int dummy; } ;
struct denode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct denode*,struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 struct denode* FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*) ; 

__attribute__((used)) static int
FUNC5(struct vop_close_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct denode *dep = FUNC3(vp);
	struct timespec ts;

	FUNC1(vp);
	if (vp->v_usecount > 1) {
		FUNC4(&ts);
		FUNC0(dep, &ts, &ts, &ts);
	}
	FUNC2(vp);
	return 0;
}