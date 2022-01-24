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
struct vt_device {int /*<<< orphan*/  vd_timer; } ;

/* Variables and functions */
 int VT_TIMERFREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int hz ; 

__attribute__((used)) static void
FUNC1(struct vt_device *vd, int ms)
{

	if (ms <= 0)
		/* Default to initial value. */
		ms = 1000 / VT_TIMERFREQ;

	FUNC0(&vd->vd_timer, hz / (1000 / ms));
}