#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  frac; int /*<<< orphan*/  sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__ bt_tickthreshold ; 
 TYPE_1__ bt_timethreshold ; 
 void* FUNC2 (TYPE_1__) ; 
 int FUNC3 (int) ; 
 int hz ; 
 void* sbt_tickthreshold ; 
 void* sbt_timethreshold ; 
 int tc_precexp ; 
 int tc_tick ; 
 int tc_timepercentage ; 

__attribute__((used)) static void __inline
FUNC4(void)
{
	int t;

	if (tc_timepercentage > 0) {
		t = (99 + tc_timepercentage) / tc_timepercentage;
		tc_precexp = FUNC3(t + (t >> 1)) - 1;
		FUNC0(hz / tc_tick, &bt_timethreshold);
		FUNC0(hz, &bt_tickthreshold);
		FUNC1(&bt_timethreshold, tc_precexp);
		FUNC1(&bt_tickthreshold, tc_precexp);
	} else {
		tc_precexp = 31;
		bt_timethreshold.sec = INT_MAX;
		bt_timethreshold.frac = ~(uint64_t)0;
		bt_tickthreshold = bt_timethreshold;
	}
	sbt_timethreshold = FUNC2(bt_timethreshold);
	sbt_tickthreshold = FUNC2(bt_tickthreshold);
}