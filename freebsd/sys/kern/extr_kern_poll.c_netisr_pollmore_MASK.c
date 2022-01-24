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
struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_2__ {int tv_usec; int tv_sec; } ;

/* Variables and functions */
 int hz ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int netisr_poll_scheduled ; 
 int netisr_pollmore_scheduled ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ pending_polls ; 
 int phase ; 
 int poll_burst ; 
 int poll_burst_max ; 
 scalar_t__ poll_handlers ; 
 int /*<<< orphan*/  poll_mtx ; 
 TYPE_1__ poll_start_t ; 
 scalar_t__ residual_burst ; 
 int user_frac ; 

void
FUNC4()
{
	struct timeval t;
	int kern_load;

	if (poll_handlers == 0)
		return;

	FUNC1(&poll_mtx);
	if (!netisr_pollmore_scheduled) {
		FUNC2(&poll_mtx);
		return;
	}
	netisr_pollmore_scheduled = 0;
	phase = 5;
	if (residual_burst > 0) {
		netisr_poll_scheduled = 1;
		netisr_pollmore_scheduled = 1;
		FUNC3();
		FUNC2(&poll_mtx);
		/* will run immediately on return, followed by netisrs */
		return;
	}
	/* here we can account time spent in netisr's in this tick */
	FUNC0(&t);
	kern_load = (t.tv_usec - poll_start_t.tv_usec) +
		(t.tv_sec - poll_start_t.tv_sec)*1000000;	/* us */
	kern_load = (kern_load * hz) / 10000;			/* 0..100 */
	if (kern_load > (100 - user_frac)) { /* try decrease ticks */
		if (poll_burst > 1)
			poll_burst--;
	} else {
		if (poll_burst < poll_burst_max)
			poll_burst++;
	}

	pending_polls--;
	if (pending_polls == 0) /* we are done */
		phase = 0;
	else {
		/*
		 * Last cycle was long and caused us to miss one or more
		 * hardclock ticks. Restart processing again, but slightly
		 * reduce the burst size to prevent that this happens again.
		 */
		poll_burst -= (poll_burst / 8);
		if (poll_burst < 1)
			poll_burst = 1;
		netisr_poll_scheduled = 1;
		netisr_pollmore_scheduled = 1;
		FUNC3();
		phase = 6;
	}
	FUNC2(&poll_mtx);
}