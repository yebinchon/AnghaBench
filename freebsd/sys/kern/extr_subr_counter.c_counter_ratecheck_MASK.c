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
typedef  scalar_t__ u_int ;
struct counter_rate {int cr_over; int cr_ticks; scalar_t__ cr_lock; int /*<<< orphan*/  cr_rate; } ;
typedef  int int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ hz ; 
 int ticks ; 

int64_t
FUNC5(struct counter_rate *cr, int64_t limit)
{
	int64_t val;
	int now;

	val = cr->cr_over;
	now = ticks;

	if ((u_int)(now - cr->cr_ticks) >= hz) {
		/*
		 * Time to clear the structure, we are in the next second.
		 * First try unlocked read, and then proceed with atomic.
		 */
		if ((cr->cr_lock == 0) &&
		    FUNC0(&cr->cr_lock, 0, 1)) {
			/*
			 * Check if other thread has just went through the
			 * reset sequence before us.
			 */
			if ((u_int)(now - cr->cr_ticks) >= hz) {
				val = FUNC3(cr->cr_rate);
				FUNC4(cr->cr_rate);
				cr->cr_over = 0;
				cr->cr_ticks = now;
				if (val <= limit)
					val = 0;
			}
			FUNC1(&cr->cr_lock, 0);
		} else
			/*
			 * We failed to lock, in this case other thread may
			 * be running counter_u64_zero(), so it is not safe
			 * to do an update, we skip it.
			 */
			return (val);
	}

	FUNC2(cr->cr_rate, 1);
	if (cr->cr_over != 0)
		return (-1);
	if (FUNC3(cr->cr_rate) > limit)
		val = cr->cr_over = -1;

	return (val);
}