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
typedef  int /*<<< orphan*/  term_pos_t ;
struct winsize {int dummy; } ;
struct TYPE_2__ {struct terminal* vb_terminal; } ;
struct vt_window {unsigned int vw_number; int /*<<< orphan*/  vw_proc_dead_timer; TYPE_1__ vw_buf; struct terminal* vw_terminal; int /*<<< orphan*/  vw_font; int /*<<< orphan*/  vw_kbdmode; struct vt_device* vw_device; } ;
struct vt_device {int vd_flags; struct vt_window** vd_windows; } ;
struct terminal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  K_XLATE ; 
 int /*<<< orphan*/  M_VT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int VDF_TEXTMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vt_window* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 struct terminal* FUNC2 (int /*<<< orphan*/ *,struct vt_window*) ; 
 int /*<<< orphan*/  FUNC3 (struct terminal*,struct winsize*) ; 
 int /*<<< orphan*/  FUNC4 (struct vt_window*) ; 
 int /*<<< orphan*/  vt_font_default ; 
 int /*<<< orphan*/  vt_termclass ; 
 int /*<<< orphan*/  FUNC5 (struct vt_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vt_device*,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vt_window *
FUNC9(struct vt_device *vd, unsigned int window)
{
	struct vt_window *vw;
	struct terminal *tm;
	term_pos_t size;
	struct winsize wsz;

	vw = FUNC1(sizeof *vw, M_VT, M_WAITOK|M_ZERO);
	vw->vw_device = vd;
	vw->vw_number = window;
	vw->vw_kbdmode = K_XLATE;

	if ((vd->vd_flags & VDF_TEXTMODE) == 0) {
		vw->vw_font = FUNC8(&vt_font_default);
		FUNC4(vw);
	}

	FUNC5(vd, vw->vw_font, &size);
	FUNC6(vd, vw->vw_font, &wsz);
	tm = vw->vw_terminal = FUNC2(&vt_termclass, vw);
	vw->vw_buf.vb_terminal = tm;	/* must be set before vtbuf_init() */
	FUNC7(&vw->vw_buf, &size);

	FUNC3(tm, &wsz);
	vd->vd_windows[window] = vw;
	FUNC0(&vw->vw_proc_dead_timer, 0);

	return (vw);
}