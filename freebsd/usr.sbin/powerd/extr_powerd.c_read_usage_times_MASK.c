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

/* Variables and functions */
 int CPUSTATES ; 
 int CP_IDLE ; 
 int /*<<< orphan*/  cp_times_mib ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (long*) ; 
 long* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (long*,long*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,long*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(int *load)
{
	static long *cp_times = NULL, *cp_times_old = NULL;
	static int ncpus = 0;
	size_t cp_times_len;
	int error, cpu, i, total;

	if (cp_times == NULL) {
		cp_times_len = 0;
		error = FUNC3(cp_times_mib, 2, NULL, &cp_times_len, NULL, 0);
		if (error)
			return (error);
		if ((cp_times = FUNC1(cp_times_len)) == NULL)
			return (errno);
		if ((cp_times_old = FUNC1(cp_times_len)) == NULL) {
			FUNC0(cp_times);
			cp_times = NULL;
			return (errno);
		}
		ncpus = cp_times_len / (sizeof(long) * CPUSTATES);
	}

	cp_times_len = sizeof(long) * CPUSTATES * ncpus;
	error = FUNC3(cp_times_mib, 2, cp_times, &cp_times_len, NULL, 0);
	if (error)
		return (error);

	if (load) {
		*load = 0;
		for (cpu = 0; cpu < ncpus; cpu++) {
			total = 0;
			for (i = 0; i < CPUSTATES; i++) {
			    total += cp_times[cpu * CPUSTATES + i] -
				cp_times_old[cpu * CPUSTATES + i];
			}
			if (total == 0)
				continue;
			*load += 100 - (cp_times[cpu * CPUSTATES + CP_IDLE] -
			    cp_times_old[cpu * CPUSTATES + CP_IDLE]) * 100 / total;
		}
	}

	FUNC2(cp_times_old, cp_times, cp_times_len);

	return (0);
}