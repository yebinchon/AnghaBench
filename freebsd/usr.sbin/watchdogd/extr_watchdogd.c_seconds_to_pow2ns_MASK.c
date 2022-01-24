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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 scalar_t__ debugging ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 unsigned long long FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

__attribute__((used)) static int
FUNC3(int seconds)
{
	uint64_t power;
	uint64_t ns;
	uint64_t shifted;

	if (seconds <= 0)
		FUNC0(1, "seconds %d < 0", seconds);
	ns = ((uint64_t)seconds) * 1000000000ULL;
	power = FUNC1(ns);
	shifted = 1ULL << power;
	if (shifted <= ns) {
		power++;
	}
	if (debugging) {
		FUNC2("shifted %lld\n", (long long)shifted);
		FUNC2("seconds_to_pow2ns: seconds: %d, ns %lld, power %d\n",
		    seconds, (long long)ns, (int)power);
	}
	return (power);
}