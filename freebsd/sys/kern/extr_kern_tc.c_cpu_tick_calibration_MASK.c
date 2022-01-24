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
typedef  int time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int time_uptime ; 

void
FUNC1(void)
{
	static time_t last_calib;

	if (time_uptime != last_calib && !(time_uptime & 0xf)) {
		FUNC0(0);
		last_calib = time_uptime;
	}
}