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
typedef  unsigned long u_long ;

/* Variables and functions */
 int CPUSTATES ; 
 int CP_IDLE ; 
 int CP_INTR ; 
 int CP_NICE ; 
 int CP_SYS ; 
 int CP_USER ; 
 double* cur_cp_times ; 
 double* last_cp_times ; 
 int /*<<< orphan*/  FUNC0 (char*,double,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(u_long cpumask, int maxid)
{
	double lpct, total;
	long tmp;
	int i, over, state;

	/* devstats does this for cp_time */
	for (i = 0; i <= maxid; i++) {
		if ((cpumask & (1ul << i)) == 0)
			continue;
		for (state = 0; state < CPUSTATES; ++state) {
			tmp = cur_cp_times[i * CPUSTATES + state];
			cur_cp_times[i * CPUSTATES + state] -= last_cp_times[i *
			    CPUSTATES + state];
			last_cp_times[i * CPUSTATES + state] = tmp;
		}
	}

	over = 0;
	FUNC5("cpu");
	for (i = 0; i <= maxid; i++) {
		if ((cpumask & (1ul << i)) == 0)
			continue;
		FUNC4("cpu");
		FUNC3("{ke:name/%d}", i);
		total = 0;
		for (state = 0; state < CPUSTATES; ++state)
			total += cur_cp_times[i * CPUSTATES + state];
		if (total)
			lpct = 100.0 / total;
		else
			lpct = 0.0;
		FUNC0("user", (cur_cp_times[i * CPUSTATES + CP_USER] +
		    cur_cp_times[i * CPUSTATES + CP_NICE]) * lpct, &over);
		FUNC0("system", (cur_cp_times[i * CPUSTATES + CP_SYS] +
		    cur_cp_times[i * CPUSTATES + CP_INTR]) * lpct, &over);
		FUNC0("idle", cur_cp_times[i * CPUSTATES + CP_IDLE] * lpct,
		    &over);
		FUNC1("cpu");
	}
	FUNC2("cpu");
}