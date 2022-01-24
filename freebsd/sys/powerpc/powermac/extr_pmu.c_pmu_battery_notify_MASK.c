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
struct pmu_battstate {int state; } ;
typedef  int /*<<< orphan*/  notify_buf ;

/* Variables and functions */
 int PMU_PWR_AC_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC2(struct pmu_battstate *batt, struct pmu_battstate *old)
{
	char notify_buf[16];
	int new_acline, old_acline;

	new_acline = (batt->state & PMU_PWR_AC_PRESENT) ? 1 : 0;
	old_acline = (old->state & PMU_PWR_AC_PRESENT) ? 1 : 0;

	if (new_acline != old_acline) {
		FUNC1(notify_buf, sizeof(notify_buf),
		    "notify=0x%02x", new_acline);
		FUNC0("PMU", "POWER", "ACLINE", notify_buf);
	}
}