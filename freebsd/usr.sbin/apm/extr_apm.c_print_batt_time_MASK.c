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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(int batt_time)
{
	FUNC0("Remaining battery time: ");
	if (batt_time == -1)
		FUNC0("unknown\n");
	else {
		int h, m, s;

		h = batt_time;
		s = h % 60;
		h /= 60;
		m = h % 60;
		h /= 60;
		FUNC0("%2d:%02d:%02d\n", h, m, s);
	}
}