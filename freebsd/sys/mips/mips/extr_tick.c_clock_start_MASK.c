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
typedef  int uint32_t ;
struct eventtimer {int et_frequency; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  compare_ticks ; 
 int /*<<< orphan*/  cycles_per_tick ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
	uint32_t fdiv, div, next;

	if (period != 0) {
		div = (et->et_frequency * period) >> 32;
	} else
		div = 0;
	if (first != 0)
		fdiv = (et->et_frequency * first) >> 32;
	else 
		fdiv = div;
	FUNC0(cycles_per_tick, div);
	next = FUNC1() + fdiv;
	FUNC0(compare_ticks, next);
	FUNC2(next);
	return (0);
}