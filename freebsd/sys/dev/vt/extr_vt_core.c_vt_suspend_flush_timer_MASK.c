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
struct vt_device {int vd_flags; int /*<<< orphan*/  vd_timer; int /*<<< orphan*/  vd_timer_armed; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int VDF_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct vt_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct vt_device *vd)
{
	/*
	 * As long as this function is called locked, callout_stop()
	 * has the same effect like callout_drain() with regard to
	 * preventing the callback function from executing.
	 */
	FUNC0(vd, MA_OWNED);

	if (!(vd->vd_flags & VDF_ASYNC) ||
	    !FUNC1(&vd->vd_timer_armed, 1, 0))
		return;

	FUNC2(&vd->vd_timer);
}