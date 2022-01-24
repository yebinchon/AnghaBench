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
typedef  long long uint64_t ;

/* Variables and functions */
 long long FUNC0 () ; 

uint64_t
FUNC1(uint64_t tick)
{

	if (tick > 18446744073709551LL)		/* floor(2^64 / 1000) */
		return (tick / (FUNC0() / 1000000LL));
	else if (tick > 18446744073709LL)	/* floor(2^64 / 1000000) */
		return ((tick * 1000LL) / (FUNC0() / 1000LL));
	else
		return ((tick * 1000000LL) / FUNC0());
}