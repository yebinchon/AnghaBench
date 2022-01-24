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
struct timeval {int dummy; } ;
struct timespec {int tv_nsec; } ;
struct sched_param {int sched_priority; } ;
struct TYPE_2__ {int tv_usec; int tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int MAP_ANON ; 
 int MAP_SHARED ; 
 int MAX_RANAT ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  SCHED_RR ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long volatile child ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC10 (long volatile,int /*<<< orphan*/ ,struct sched_param*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tick ; 
 scalar_t__ ticked ; 
 int /*<<< orphan*/  tidyup ; 
 double FUNC13 (struct timeval*,struct timeval*) ; 

int FUNC14(int argc, char *argv[])
{
	int e = 0;
	volatile long *p, pid;
	int i;
	struct sched_param fifo_param;
	struct timespec interval;
#define MAX_RANAT 32
	struct timeval ranat[MAX_RANAT];

#ifdef CAN_USE_ALARMS
	static struct itimerval itimerval;
#endif

	/* What is the round robin interval?
	 */

	if (FUNC9(0, &interval) == -1) {
		FUNC8("sched_rr_get_interval");
		FUNC2(errno);
	}

#ifdef CAN_USE_ALARMS
	signal(SIGALRM, tick);
#endif

	fifo_param.sched_priority = 1;

	p = (long *)FUNC7(0, sizeof(*p),
	PROT_READ|PROT_WRITE, MAP_ANON|MAP_SHARED, -1, 0);

	if (p == (long *)-1)
		FUNC1(errno, "mmap");

	*p = 0;

	if (FUNC10(0, SCHED_FIFO, &fifo_param) == -1)
	{
		FUNC8("sched_setscheduler");
		return -1;
	}

	pid = FUNC5();

	if ((child = FUNC3()) == 0)
	{
		/* Child process.  Just keep setting the pointer to our
		 * PID.  The parent will kill us when it wants to.
		 */

		pid = FUNC5();
		while (1)
			*p = pid;
	}
	else
	{
		FUNC0(tidyup);
		*p = pid;


		ticked = 0;

#ifdef CAN_USE_ALARMS
		/* Set an alarm for 250 times the round-robin interval.
		 * Then we will verify that a similar priority process
		 * will not run when we are using the FIFO scheduler.
		 */
		itimerval.it_value.tv_usec = interval.tv_nsec / (1000 / 250);

		itimerval.it_value.tv_sec = itimerval.it_value.tv_usec / 1000000;
		itimerval.it_value.tv_usec %= 1000000;


		if (setitimer(ITIMER_REAL, &itimerval, 0) == -1) {
			perror("setitimer");
			exit(errno);
		}
#endif


		FUNC6(ranat, 0);
		i = 1;
		while (!ticked && i < MAX_RANAT)
			if (*p == child) {
				FUNC6(ranat + i, 0);
				*p = 0;
				e = -1;
				i++;
			}

		if (e) {
			int j;

			FUNC4(stderr,
			"SCHED_FIFO had erroneous context switches:\n");
			for (j = 1; j < i; j++) {
				FUNC4(stderr, "%d %g\n", j,
					FUNC13(ranat + j, ranat + j - 1));
			}
			return e;
		}

		/* Switch to the round robin scheduler and the child
		 * should run within twice the interval.
		 */
		if (FUNC10(child, SCHED_RR, &fifo_param) == -1 ||
		FUNC10(0, SCHED_RR, &fifo_param) == -1)
		{
			FUNC8("sched_setscheduler");
			return -1;
		}

		e = -1;

		ticked = 0;

#ifdef CAN_USE_ALARMS

		/* Now we do want to see it run.  But only set
		 * the alarm for twice the interval:
		 */
		itimerval.it_value.tv_usec = interval.tv_nsec / 500;

		if (setitimer(ITIMER_REAL, &itimerval, 0) == -1) {
			perror("setitimer");
			exit(errno);
		}
#endif

		for (i = 0; !ticked; i++)
			if (*p == child) {
				e = 0;
				break;
			}

		if (e)
			FUNC4(stderr,"Child never ran when it should have.\n");
	}

	FUNC2(e);
}