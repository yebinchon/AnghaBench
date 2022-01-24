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
struct vt_device {scalar_t__ vd_savedwindow; scalar_t__ vd_curwindow; scalar_t__* vd_windows; int /*<<< orphan*/  vd_lock; int /*<<< orphan*/  vd_winswitch; } ;

/* Variables and functions */
 size_t VT_CONSWINDOW ; 
 int /*<<< orphan*/  FUNC0 (struct vt_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct vt_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ vt_suspendswitch ; 

void
FUNC4(struct vt_device *vd)
{
	int error;

	if (vt_suspendswitch == 0)
		return;
	/* Save current window. */
	vd->vd_savedwindow = vd->vd_curwindow;
	/* Ask holding process to free window and switch to console window */
	FUNC3(vd->vd_windows[VT_CONSWINDOW]);

	/* Wait for the window switch to complete. */
	error = 0;
	FUNC0(vd);
	while (vd->vd_curwindow != vd->vd_windows[VT_CONSWINDOW] && error == 0)
		error = FUNC2(&vd->vd_winswitch, &vd->vd_lock);
	FUNC1(vd);
}