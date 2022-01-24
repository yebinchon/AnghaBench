#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  term_pos_t ;
struct winsize {int dummy; } ;
struct TYPE_6__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_5__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_7__ {TYPE_2__ tr_begin; TYPE_1__ tr_end; } ;
struct TYPE_8__ {int /*<<< orphan*/  vb_cursor; int /*<<< orphan*/  vb_history_size; } ;
struct vt_window {int vw_flags; TYPE_3__ vw_draw_area; struct vt_font* vw_font; TYPE_4__ vw_buf; struct terminal* vw_terminal; struct vt_device* vw_device; } ;
struct vt_font {int dummy; } ;
struct vt_device {int /*<<< orphan*/  vd_flags; struct vt_window* vd_curwindow; void* vd_my; void* vd_mx; } ;
struct terminal {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  VDF_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct vt_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct vt_device*) ; 
 int VWF_BUSY ; 
 void* FUNC2 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct terminal*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct terminal*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct terminal*,struct winsize*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vt_window*) ; 
 int /*<<< orphan*/  FUNC7 (struct vt_window*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vt_device*,struct vt_font*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct vt_device*,struct vt_font*,struct winsize*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vt_font* FUNC11 (struct vt_font*) ; 
 int /*<<< orphan*/  FUNC12 (struct vt_font*) ; 

__attribute__((used)) static int
FUNC13(struct vt_window *vw, struct vt_font *vf)
{
	struct vt_device *vd = vw->vw_device;
	struct terminal *tm = vw->vw_terminal;
	term_pos_t size;
	struct winsize wsz;

	/*
	 * Changing fonts.
	 *
	 * Changing fonts is a little tricky.  We must prevent
	 * simultaneous access to the device, so we must stop
	 * the display timer and the terminal from accessing.
	 * We need to switch fonts and grow our screen buffer.
	 *
	 * XXX: Right now the code uses terminal_mute() to
	 * prevent data from reaching the console driver while
	 * resizing the screen buffer.  This isn't elegant...
	 */

	FUNC0(vd);
	if (vw->vw_flags & VWF_BUSY) {
		/* Another process is changing the font. */
		FUNC1(vd);
		return (EBUSY);
	}
	vw->vw_flags |= VWF_BUSY;
	FUNC1(vd);

	FUNC8(vd, vf, &size);
	FUNC9(vd, vf, &wsz);

	/* Grow the screen buffer and terminal. */
	FUNC3(tm, 1);
	FUNC10(&vw->vw_buf, &size, vw->vw_buf.vb_history_size);
	FUNC5(tm, &wsz, 0, NULL);
	FUNC4(tm, &vw->vw_buf.vb_cursor);
	FUNC3(tm, 0);

	/* Actually apply the font to the current window. */
	FUNC0(vd);
	if (vw->vw_font != vf && vw->vw_font != NULL && vf != NULL) {
		/*
		 * In case vt_change_font called to update size we don't need
		 * to update font link.
		 */
		FUNC12(vw->vw_font);
		vw->vw_font = FUNC11(vf);
	}

	/*
	 * Compute the drawable area and move the mouse cursor inside
	 * it, in case the new area is smaller than the previous one.
	 */
	FUNC6(vw);
	vd->vd_mx = FUNC2(vd->vd_mx,
	    vw->vw_draw_area.tr_end.tp_col -
	    vw->vw_draw_area.tr_begin.tp_col - 1);
	vd->vd_my = FUNC2(vd->vd_my,
	    vw->vw_draw_area.tr_end.tp_row -
	    vw->vw_draw_area.tr_begin.tp_row - 1);

	/* Force a full redraw the next timer tick. */
	if (vd->vd_curwindow == vw) {
		vd->vd_flags |= VDF_INVALID;
		FUNC7(vw, 0);
	}
	vw->vw_flags &= ~VWF_BUSY;
	FUNC1(vd);
	return (0);
}