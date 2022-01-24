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
typedef  int uint64_t ;
struct eventtimer {int et_frequency; int et_flags; scalar_t__ et_min_period; scalar_t__ et_max_period; int /*<<< orphan*/  et_name; } ;

/* Variables and functions */
 int ET_FLAGS_POW2DIV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ SBT_1S ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct eventtimer *et, int freq)
{
	uint64_t div;

	if (et->et_frequency != 0) {
		div = FUNC2((et->et_frequency + freq / 2) / freq, 1);
		if (et->et_flags & ET_FLAGS_POW2DIV)
			div = 1 << (FUNC1(div + div / 2) - 1);
		freq = (et->et_frequency + div / 2) / div;
	}
	if (et->et_min_period > SBT_1S)
		FUNC5("Event timer \"%s\" doesn't support sub-second periods!",
		    et->et_name);
	else if (et->et_min_period != 0)
		freq = FUNC4(freq, FUNC0(et->et_min_period));
	if (et->et_max_period < SBT_1S && et->et_max_period != 0)
		freq = FUNC3(freq, FUNC0(et->et_max_period));
	return (freq);
}