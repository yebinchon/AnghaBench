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
struct vt_device {int /*<<< orphan*/ * vd_savedwindow; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ vt_suspendswitch ; 

void
FUNC1(struct vt_device *vd)
{

	if (vt_suspendswitch == 0)
		return;
	/* Switch back to saved window, if any */
	FUNC0(vd->vd_savedwindow);
	vd->vd_savedwindow = NULL;
}