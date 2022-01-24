#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  et_arg; int /*<<< orphan*/  (* et_event_cb ) (TYPE_1__*,int /*<<< orphan*/ ) ;scalar_t__ et_active; } ;
struct clock_softc {TYPE_1__ et; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FILTER_HANDLED ; 
 int compare_ticks ; 
 int counter_lower_last ; 
 int counter_upper ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(void *arg)
{
	struct clock_softc *sc = (struct clock_softc *)arg;
	uint32_t cycles_per_tick;
	uint32_t count, compare_last, compare_next, lost_ticks;

	cycles_per_tick = FUNC0(cycles_per_tick);
	/*
	 * Set next clock edge.
	 */
	count = FUNC2();
	compare_last = FUNC0(compare_ticks);
	if (cycles_per_tick > 0) {
		compare_next = count + cycles_per_tick;
		FUNC1(compare_ticks, compare_next);
		FUNC3(compare_next);
	} else	/* In one-shot mode timer should be stopped after the event. */
		FUNC3(0xffffffff);

	/* COUNT register wrapped around */
	if (count < FUNC0(counter_lower_last)) {
		FUNC1(counter_upper, FUNC0(counter_upper) + 1);
	}
	FUNC1(counter_lower_last, count);

	if (cycles_per_tick > 0) {

		/*
		 * Account for the "lost time" between when the timer interrupt
		 * fired and when 'clock_intr' actually started executing.
		 */
		lost_ticks = FUNC0(lost_ticks);
		lost_ticks += count - compare_last;

		/*
		 * If the COUNT and COMPARE registers are no longer in sync
		 * then make up some reasonable value for the 'lost_ticks'.
		 *
		 * This could happen, for e.g., after we resume normal
		 * operations after exiting the debugger.
		 */
		if (lost_ticks > 2 * cycles_per_tick)
			lost_ticks = cycles_per_tick;

		while (lost_ticks >= cycles_per_tick) {
			if (sc->et.et_active)
				sc->et.et_event_cb(&sc->et, sc->et.et_arg);
			lost_ticks -= cycles_per_tick;
		}
		FUNC1(lost_ticks, lost_ticks);
	}
	if (sc->et.et_active)
		sc->et.et_event_cb(&sc->et, sc->et.et_arg);
	return (FILTER_HANDLED);
}