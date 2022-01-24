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
struct vt_window {scalar_t__ vw_grabbed; int /*<<< orphan*/  vw_prev_kbdmode; int /*<<< orphan*/  vw_kbdmode; struct vt_device* vw_device; } ;
struct vt_device {int /*<<< orphan*/  vd_keyboard; } ;
struct terminal {struct vt_window* tm_softc; } ;
typedef  int /*<<< orphan*/  keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vt_window*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct terminal *tm)
{
	struct vt_device *vd;
	struct vt_window *vw;
	keyboard_t *kbd;

	vw = tm->tm_softc;
	vd = vw->vw_device;

	kbd = FUNC0(vd->vd_keyboard);
	if (kbd == NULL)
		return;

	if (--vw->vw_grabbed > 0)
		return;

	FUNC2(kbd, FALSE);

	vw->vw_kbdmode = vw->vw_prev_kbdmode;
	FUNC3(vw, kbd);
	FUNC1(kbd);
}