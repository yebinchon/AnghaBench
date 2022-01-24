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
struct TYPE_2__ {int /*<<< orphan*/  vb_cursor; int /*<<< orphan*/  vb_history_size; } ;
struct vt_window {TYPE_1__ vw_buf; struct vt_font* vw_font; struct vt_device* vw_device; } ;
struct vt_font {int dummy; } ;
struct vt_device {int vd_flags; scalar_t__ vd_height; struct vt_window* vd_curwindow; } ;
struct terminal {struct vt_window* tm_softc; } ;

/* Variables and functions */
 int VDF_DEAD ; 
 int VDF_INITIALIZED ; 
 int VDF_INVALID ; 
 int VDF_TEXTMODE ; 
 int /*<<< orphan*/  VTY_VT ; 
 int /*<<< orphan*/  FUNC0 (struct vt_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct vt_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (struct terminal*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct terminal*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct terminal*,struct winsize*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vt_window*) ; 
 struct terminal vt_consterm ; 
 int vt_draw_logo_cpus ; 
 int /*<<< orphan*/  vt_fini_logos ; 
 scalar_t__ vt_logo_sprite_height ; 
 int /*<<< orphan*/  FUNC8 (struct vt_window*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vt_splash_cpu ; 
 int /*<<< orphan*/  vt_splash_cpu_callout ; 
 int vt_splash_cpu_duration ; 
 int /*<<< orphan*/  FUNC9 (struct vt_device*,struct vt_font*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vt_device*,struct vt_font*,struct winsize*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(void *dummy)
{
	struct vt_device *vd;
	struct vt_window *vw;
	struct terminal *tm;
	struct vt_font *vf;
	struct winsize wsz;
	term_pos_t size;

	if (!FUNC12(VTY_VT))
		return;
	if (!vt_splash_cpu)
		return;

	tm = &vt_consterm;
	vw = tm->tm_softc;
	if (vw == NULL)
		return;
	vd = vw->vw_device;
	if (vd == NULL)
		return;
	vf = vw->vw_font;
	if (vf == NULL)
		return;

	FUNC0(vd);
	if ((vd->vd_flags & VDF_INITIALIZED) == 0)
		goto out;
	if ((vd->vd_flags & (VDF_DEAD | VDF_TEXTMODE)) != 0)
		goto out;
	if (vd->vd_height <= vt_logo_sprite_height)
		goto out;

	vt_draw_logo_cpus = 1;
	FUNC1(vd);

	FUNC9(vd, vf, &size);
	FUNC10(vd, vf, &wsz);

	/* Resize screen buffer and terminal. */
	FUNC4(tm, 1);
	FUNC11(&vw->vw_buf, &size, vw->vw_buf.vb_history_size);
	FUNC6(tm, &wsz, 0, NULL);
	FUNC5(tm, &vw->vw_buf.vb_cursor);
	FUNC4(tm, 0);

	FUNC0(vd);
	FUNC7(vw);

	if (vd->vd_curwindow == vw) {
		vd->vd_flags |= VDF_INVALID;
		FUNC8(vw, 0);
	}

	FUNC2(&vt_splash_cpu_callout, 1);
	FUNC3(&vt_splash_cpu_callout, vt_splash_cpu_duration * hz,
	    vt_fini_logos, NULL);

out:
	FUNC1(vd);
}