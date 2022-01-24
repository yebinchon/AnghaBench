#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ mode; } ;
struct vt_window {TYPE_2__ vw_smode; TYPE_1__* vw_device; int /*<<< orphan*/  vw_proc_dead_timer; } ;
struct TYPE_3__ {struct vt_window* vd_curwindow; } ;

/* Variables and functions */
 scalar_t__ VT_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct vt_window*) ; 
 int FUNC2 (struct vt_window*) ; 

__attribute__((used)) static int
FUNC3(struct vt_window *vw)
{
	struct vt_window *curvw;
	int ret;

	FUNC0(&vw->vw_proc_dead_timer);

	ret = FUNC2(vw);
	if (ret != 0) {
		/*
		 * If the switch hasn't happened, then return the VT
		 * to the current owner, if any.
		 */
		curvw = vw->vw_device->vd_curwindow;
		if (curvw->vw_smode.mode == VT_PROCESS)
			(void)FUNC1(curvw);
		return (ret);
	}

	/* Notify owner process about terminal availability. */
	if (vw->vw_smode.mode == VT_PROCESS) {
		ret = FUNC1(vw);
	}
	return (ret);
}