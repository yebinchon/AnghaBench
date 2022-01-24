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
struct vt_device {scalar_t__ vd_timer_armed; } ;

/* Variables and functions */
 int FUNC0 (struct vt_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct vt_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct vt_device *vd;
	int changed;

	vd = arg;
	/* Update screen if required. */
	changed = FUNC0(vd);

	/* Schedule for next update. */
	if (changed)
		FUNC1(vd, 0);
	else
		vd->vd_timer_armed = 0;
}