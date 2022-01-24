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
struct vt_window {int vw_flags; int vd_flags; int /*<<< orphan*/  vd_timer; int /*<<< orphan*/  vd_timer_armed; int /*<<< orphan*/  vd_lock; struct vt_window** vd_windows; struct vt_window* vd_curwindow; int /*<<< orphan*/  vw_terminal; int /*<<< orphan*/  vw_proc_dead_timer; } ;
struct vt_device {int vw_flags; int vd_flags; int /*<<< orphan*/  vd_timer; int /*<<< orphan*/  vd_timer_armed; int /*<<< orphan*/  vd_lock; struct vt_device** vd_windows; struct vt_device* vd_curwindow; int /*<<< orphan*/  vw_terminal; int /*<<< orphan*/  vw_proc_dead_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/ * vd_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vt_window*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_DEFAULT ; 
 int VDF_ASYNC ; 
 int /*<<< orphan*/  VTY_VT ; 
 size_t VT_CONSWINDOW ; 
 int /*<<< orphan*/  FUNC1 (struct vt_window*) ; 
 unsigned int VT_MAXWINDOWS ; 
 int VT_TIMERFREQ ; 
 int /*<<< orphan*/  FUNC2 (struct vt_window*) ; 
 int /*<<< orphan*/  FUNC3 (struct vt_window*) ; 
 int VWF_CONSOLE ; 
 int VWF_READY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct vt_window*) ; 
 int hz ; 
 TYPE_1__* main_vd ; 
 int /*<<< orphan*/  power_resume ; 
 int /*<<< orphan*/  power_suspend_early ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vt_window*) ; 
 struct vt_window* FUNC10 (struct vt_window*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct vt_window*) ; 
 int /*<<< orphan*/  vt_resume_handler ; 
 int /*<<< orphan*/  vt_suspend_handler ; 
 int /*<<< orphan*/  vt_timer ; 
 int /*<<< orphan*/  vt_window_switch ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void
FUNC13(struct vt_device *vd)
{
	struct vt_window *vw;
	unsigned int i;
	int register_handlers;

	if (!FUNC12(VTY_VT))
		return;
	if (main_vd->vd_driver == NULL)
		return;

	for (i = 0; i < VT_MAXWINDOWS; i++) {
		vw = vd->vd_windows[i];
		if (vw == NULL) {
			/* New window. */
			vw = FUNC10(vd, i);
		}
		if (!(vw->vw_flags & VWF_READY)) {
			FUNC5(&vw->vw_proc_dead_timer, 0);
			FUNC8(vw->vw_terminal, "v%r", FUNC2(vw));
			vw->vw_flags |= VWF_READY;
			if (vw->vw_flags & VWF_CONSOLE) {
				/* For existing console window. */
				FUNC0(shutdown_pre_sync,
				    vt_window_switch, vw, SHUTDOWN_PRI_DEFAULT);
			}
		}

	}
	FUNC1(vd);
	if (vd->vd_curwindow == NULL)
		vd->vd_curwindow = vd->vd_windows[VT_CONSWINDOW];

	register_handlers = 0;
	if (!(vd->vd_flags & VDF_ASYNC)) {
		/* Attach keyboard. */
		FUNC9(vd);

		/* Init 25 Hz timer. */
		FUNC6(&vd->vd_timer, &vd->vd_lock, 0);

		/*
		 * Start timer when everything ready.
		 * Note that the operations here are purposefully ordered.
		 * We need to ensure vd_timer_armed is non-zero before we set
		 * the VDF_ASYNC flag. That prevents this function from
		 * racing with vt_resume_flush_timer() to update the
		 * callout structure.
		 */
		FUNC4(&vd->vd_timer_armed, 1);
		vd->vd_flags |= VDF_ASYNC;
		FUNC7(&vd->vd_timer, hz / VT_TIMERFREQ, vt_timer, vd);
		register_handlers = 1;
	}

	FUNC3(vd);

	/* Refill settings with new sizes. */
	FUNC11(vd);

	if (register_handlers) {
		/* Register suspend/resume handlers. */
		FUNC0(power_suspend_early, vt_suspend_handler,
		    vd, EVENTHANDLER_PRI_ANY);
		FUNC0(power_resume, vt_resume_handler, vd,
		    EVENTHANDLER_PRI_ANY);
	}
}