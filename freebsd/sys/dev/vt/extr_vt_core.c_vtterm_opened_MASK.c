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
struct vt_window {int /*<<< orphan*/  vw_flags; struct vt_device* vw_device; } ;
struct vt_device {int /*<<< orphan*/  vd_flags; } ;
struct terminal {struct vt_window* tm_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDF_SPLASH ; 
 int /*<<< orphan*/  FUNC0 (struct vt_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct vt_device*) ; 
 int /*<<< orphan*/  VWF_OPENED ; 

__attribute__((used)) static void
FUNC2(struct terminal *tm, int opened)
{
	struct vt_window *vw = tm->tm_softc;
	struct vt_device *vd = vw->vw_device;

	FUNC0(vd);
	vd->vd_flags &= ~VDF_SPLASH;
	if (opened)
		vw->vw_flags |= VWF_OPENED;
	else {
		vw->vw_flags &= ~VWF_OPENED;
		/* TODO: finish ACQ/REL */
	}
	FUNC1(vd);
}