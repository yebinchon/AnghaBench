#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {double* cp_time; } ;

/* Variables and functions */
 int CPUSTATES ; 
 size_t CP_IDLE ; 
 size_t CP_INTR ; 
 size_t CP_NICE ; 
 size_t CP_SYS ; 
 size_t CP_USER ; 
 TYPE_1__ cur ; 
 int /*<<< orphan*/  FUNC0 (char*,double,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	double lpct, total;
	int state, over;

	total = 0;
	for (state = 0; state < CPUSTATES; ++state)
		total += cur.cp_time[state];
	if (total > 0)
		lpct = 100.0 / total;
	else
		lpct = 0.0;
	over = 0;
	FUNC2("cpu-statistics");
	FUNC0("user", (cur.cp_time[CP_USER] + cur.cp_time[CP_NICE]) * lpct,
	    &over);
	FUNC0("system", (cur.cp_time[CP_SYS] + cur.cp_time[CP_INTR]) * lpct,
	    &over);
	FUNC0("idle", cur.cp_time[CP_IDLE] * lpct, &over);
	FUNC1("cpu-statistics");
}