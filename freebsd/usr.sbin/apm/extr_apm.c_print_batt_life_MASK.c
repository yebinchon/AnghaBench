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
typedef  int u_int ;

/* Variables and functions */
 int APM_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(u_int batt_life)
{
	FUNC0("Remaining battery life: ");
	if (batt_life == APM_UNKNOWN)
		FUNC0("unknown\n");
	else if (batt_life <= 100)
		FUNC0("%d%%\n", batt_life);
	else
		FUNC0("invalid value (0x%x)\n", batt_life);
}