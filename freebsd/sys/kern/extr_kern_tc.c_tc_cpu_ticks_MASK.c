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
typedef  scalar_t__ uint64_t ;
struct timecounter {unsigned int (* tc_get_timecount ) (struct timecounter*) ;unsigned int tc_counter_mask; } ;
struct TYPE_2__ {struct timecounter* th_counter; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (struct timecounter*) ; 
 int /*<<< orphan*/  tc_cpu_ticks_base ; 
 int /*<<< orphan*/  tc_cpu_ticks_last ; 
 TYPE_1__* timehands ; 

__attribute__((used)) static uint64_t
FUNC4(void)
{
	struct timecounter *tc;
	uint64_t res, *base;
	unsigned u, *last;

	FUNC1();
	base = FUNC0(tc_cpu_ticks_base);
	last = FUNC0(tc_cpu_ticks_last);
	tc = timehands->th_counter;
	u = tc->tc_get_timecount(tc) & tc->tc_counter_mask;
	if (u < *last)
		*base += (uint64_t)tc->tc_counter_mask + 1;
	*last = u;
	res = u + *base;
	FUNC2();
	return (res);
}