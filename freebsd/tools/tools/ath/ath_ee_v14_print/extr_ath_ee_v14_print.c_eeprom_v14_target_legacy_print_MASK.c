#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bChannel; scalar_t__* tPow2x; } ;
typedef  TYPE_1__ CAL_TARGET_POWER_LEG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(CAL_TARGET_POWER_LEG *l)
{
	int i;
	if (l->bChannel == 0xff)
		return;
	FUNC0("  bChannel: %d;", l->bChannel);
	for (i = 0; i < 4; i++) {
		FUNC0(" %.2f", (float) l->tPow2x[i] / 2.0);
	}
	FUNC0(" (dBm)\n");
}