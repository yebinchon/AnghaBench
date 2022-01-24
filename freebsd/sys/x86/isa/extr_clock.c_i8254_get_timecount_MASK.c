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
typedef  int uint16_t ;
typedef  int u_int ;
struct timecounter {int /*<<< orphan*/  tc_priv; } ;
struct attimer_softc {scalar_t__ period; } ;
typedef  int register_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PSL_I ; 
 int /*<<< orphan*/  TIMER_CNTR0 ; 
 int TIMER_LATCH ; 
 int /*<<< orphan*/  TIMER_MODE ; 
 int TIMER_SEL0 ; 
 scalar_t__ clkintr_pending ; 
 int /*<<< orphan*/  clock_lock ; 
 struct attimer_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  i8254_intsrc ; 
 int i8254_lastcount ; 
 int i8254_max_count ; 
 scalar_t__ i8254_offset ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int i8254_ticked ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 () ; 
 int FUNC8 () ; 

__attribute__((used)) static unsigned
FUNC9(struct timecounter *tc)
{
	device_t dev = (device_t)tc->tc_priv;
	struct attimer_softc *sc = FUNC0(dev);
	register_t flags;
	uint16_t count;
	u_int high, low;

	if (sc->period == 0)
		return (i8254_max_count - FUNC1());

#ifdef __amd64__
	flags = FUNC8();
#else
	flags = read_eflags();
#endif
	FUNC4(&clock_lock);

	/* Select timer0 and latch counter value. */
	FUNC6(TIMER_MODE, TIMER_SEL0 | TIMER_LATCH);

	low = FUNC3(TIMER_CNTR0);
	high = FUNC3(TIMER_CNTR0);
	count = i8254_max_count - ((high << 8) | low);
	if (count < i8254_lastcount ||
	    (!i8254_ticked && (clkintr_pending ||
	    ((count < 20 || (!(flags & PSL_I) &&
	    count < i8254_max_count / 2u)) &&
	    &i8254_pending != NULL && FUNC2(i8254_intsrc))))) {
		i8254_ticked = 1;
		i8254_offset += i8254_max_count;
	}
	i8254_lastcount = count;
	count += i8254_offset;
	FUNC5(&clock_lock);
	return (count);
}