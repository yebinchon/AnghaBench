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
typedef  int u_int64_t ;
typedef  int u_int ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int MACHCLK_SHIFT ; 
 int PCATCH ; 
 int PWAIT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int machclk_freq ; 
 int machclk_per_tick ; 
 scalar_t__ machclk_usepcc ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  tsc_freq ; 
 int /*<<< orphan*/  FUNC5 (int*,int,char*,int) ; 

void
FUNC6(void)
{
	static int called;

	/* Call one-time initialization function. */
	if (!called) {
		FUNC1();
		called = 1;
	}

	if (machclk_usepcc == 0) {
		/* emulate 256MHz using microtime() */
		machclk_freq = 1000000 << MACHCLK_SHIFT;
		machclk_per_tick = machclk_freq / hz;
#ifdef ALTQ_DEBUG
		printf("altq: emulate %uHz cpu clock\n", machclk_freq);
#endif
		return;
	}

	/*
	 * if the clock frequency (of Pentium TSC or Alpha PCC) is
	 * accessible, just use it.
	 */
#if defined(__amd64__) || defined(__i386__)
	machclk_freq = FUNC0(&tsc_freq);
#endif

	/*
	 * if we don't know the clock frequency, measure it.
	 */
	if (machclk_freq == 0) {
		static int	wait;
		struct timeval	tv_start, tv_end;
		u_int64_t	start, end, diff;
		int		timo;

		FUNC2(&tv_start);
		start = FUNC4();
		timo = hz;	/* 1 sec */
		(void)FUNC5(&wait, PWAIT | PCATCH, "init_machclk", timo);
		FUNC2(&tv_end);
		end = FUNC4();
		diff = (u_int64_t)(tv_end.tv_sec - tv_start.tv_sec) * 1000000
		    + tv_end.tv_usec - tv_start.tv_usec;
		if (diff != 0)
			machclk_freq = (u_int)((end - start) * 1000000 / diff);
	}

	machclk_per_tick = machclk_freq / hz;

#ifdef ALTQ_DEBUG
	printf("altq: CPU clock: %uHz\n", machclk_freq);
#endif
}