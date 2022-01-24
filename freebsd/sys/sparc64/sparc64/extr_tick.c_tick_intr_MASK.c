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
typedef  long u_long ;
struct trapframe {int dummy; } ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  adjust_edges ; 
 int /*<<< orphan*/  adjust_excess ; 
 int adjust_missed ; 
 int /*<<< orphan*/  adjust_ticks ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct trapframe*) ; 
 int /*<<< orphan*/  tickadj ; 
 int /*<<< orphan*/  tickincrement ; 
 int /*<<< orphan*/  tickref ; 
 int /*<<< orphan*/  FUNC6 (long) ; 

__attribute__((used)) static void
FUNC7(struct trapframe *tf)
{
	u_long adj, ref, tick, tick_increment;
	long delta;
	register_t s;
	int count;

	tick_increment = FUNC0(tickincrement);
	if (tick_increment != 0) {
		/*
		 * NB: the sequence of reading the (S)TICK register,
		 * calculating the value of the next tick and writing it to
		 * the (S)TICK_COMPARE register must not be interrupted, not
		 * even by an IPI, otherwise a value that is in the past could
		 * be written in the worst case and thus causing the periodic
		 * timer to stop.
		 */
		s = FUNC2();
		adj = FUNC0(tickadj);
		tick = FUNC4();
		FUNC6(tick + tick_increment - adj);
		FUNC3(s);
		ref = FUNC0(tickref);
		delta = tick - ref;
		count = 0;
		while (delta >= tick_increment) {
			FUNC5(tf);
			delta -= tick_increment;
			ref += tick_increment;
			if (adj != 0)
				adjust_ticks++;
			count++;
		}
		if (count > 0) {
			adjust_missed += count - 1;
			if (delta > (tick_increment >> 3)) {
				if (adj == 0)
					adjust_edges++;
				adj = tick_increment >> 4;
			} else
				adj = 0;
		} else {
			adj = 0;
			adjust_excess++;
		}
		FUNC1(tickref, ref);
		FUNC1(tickadj, adj);
	} else
		FUNC5(tf);
}