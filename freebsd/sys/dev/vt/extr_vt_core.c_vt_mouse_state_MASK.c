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
struct vt_window {int /*<<< orphan*/  vw_flags; } ;
struct vt_device {struct vt_window* vd_curwindow; } ;

/* Variables and functions */
#define  VT_MOUSE_HIDE 129 
#define  VT_MOUSE_SHOW 128 
 int /*<<< orphan*/  VWF_MOUSE_HIDE ; 
 struct vt_device* main_vd ; 
 int /*<<< orphan*/  FUNC0 (struct vt_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vt_window*,int /*<<< orphan*/ ) ; 

void
FUNC2(int show)
{
	struct vt_device *vd;
	struct vt_window *vw;

	vd = main_vd;
	vw = vd->vd_curwindow;

	switch (show) {
	case VT_MOUSE_HIDE:
		vw->vw_flags |= VWF_MOUSE_HIDE;
		break;
	case VT_MOUSE_SHOW:
		vw->vw_flags &= ~VWF_MOUSE_HIDE;
		break;
	}

	/* Mark mouse position as dirty. */
	FUNC0(vd, false);
	FUNC1(vw, 0);
}