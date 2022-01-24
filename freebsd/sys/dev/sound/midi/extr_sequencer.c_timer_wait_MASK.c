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
struct timeval {unsigned long long tv_sec; unsigned long long tv_usec; } ;
struct seq_softc {scalar_t__ timerrun; scalar_t__ playing; int tempo; int timerbase; int waiting; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/  reset_cv; struct timeval timersub; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*) ; 
 unsigned long long hz ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,struct timeval*) ; 

__attribute__((used)) static void
FUNC6(struct seq_softc *t, int ticks, int wait_abs)
{
	struct timeval now, when;
	int ret;
	unsigned long long i;

	while (t->timerrun == 0) {
		FUNC0(2, FUNC4("Timer wait when timer isn't running\n"));
		/*
	         * The old sequencer used timeouts that only increased
	         * the timer when the timer was running.
	         * Hence the sequencer would stick (?) if the
	         * timer was disabled.
	         */
		FUNC2(&t->reset_cv, &t->seq_lock);
		if (t->playing == 0)
			return;
	}

	i = ticks * 60ull * 1000000ull / (t->tempo * t->timerbase);

	when.tv_sec = i / 1000000;
	when.tv_usec = i % 1000000;

#if 0
	printf("timer_wait tempo %d timerbase %d ticks %d abs %d u_sec %llu\n",
	    t->tempo, t->timerbase, ticks, wait_abs, i);
#endif

	if (wait_abs != 0) {
		FUNC3(&now);
		FUNC5(&now, &t->timersub);
		FUNC5(&when, &now);
	}
	if (when.tv_sec < 0 || when.tv_usec < 0) {
		FUNC0(3,
		    FUNC4("seq_timer error negative time %lds.%06lds\n",
		    (long)when.tv_sec, (long)when.tv_usec));
		return;
	}
	i = when.tv_sec * 1000000ull;
	i += when.tv_usec;
	i *= hz;
	i /= 1000000ull;
#if 0
	printf("seq_timer usec %llu ticks %llu\n",
	    when.tv_sec * 1000000ull + when.tv_usec, i);
#endif
	t->waiting = 1;
	ret = FUNC1(&t->reset_cv, &t->seq_lock, i + 1);
	t->waiting = 0;

	if (ret != EWOULDBLOCK)
		FUNC0(3, FUNC4("seq_timer didn't timeout\n"));

}