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
typedef  int u_long ;
struct eventtimer {int dummy; } ;
typedef  int sbintime_t ;
typedef  int /*<<< orphan*/  register_t ;
struct TYPE_2__ {int et_frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int FUNC4 (int,int) ; 
 TYPE_1__ tick_et ; 
 int /*<<< orphan*/  tickadj ; 
 int /*<<< orphan*/  tickincrement ; 
 int /*<<< orphan*/  tickref ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
	u_long base, div, fdiv;
	register_t s;

	if (period != 0)
		div = (tick_et.et_frequency * period) >> 32;
	else
		div = 0;
	if (first != 0)
		fdiv = (tick_et.et_frequency * first) >> 32;
	else
		fdiv = div;
	FUNC0(tickincrement, div);

	/*
	 * Try to make the (S)TICK interrupts as synchronously as possible
	 * on all CPUs to avoid inaccuracies for migrating processes.  Leave
	 * out one tick to make sure that it is not missed.
	 */
	s = FUNC1();
	base = FUNC3();
	if (div != 0) {
		FUNC0(tickadj, 0);
		base = FUNC4(base, div);
	}
	FUNC0(tickref, base);
	FUNC5(base + fdiv);
	FUNC2(s);
	return (0);
}