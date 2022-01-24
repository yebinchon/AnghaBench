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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  cp_time_last ;

/* Variables and functions */
 int CPUSTATES ; 
 size_t CP_IDLE ; 
 size_t CP_INTR ; 
 size_t CP_NICE ; 
 size_t CP_SYS ; 
 size_t CP_USER ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SYSCTLNAME_CPTIME ; 
 int /*<<< orphan*/  FUNC0 (long*,long*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC6 (int) ; 
 int pflag ; 
 scalar_t__* pid_list ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,long**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void
FUNC13(void)
{
#if 0
	long cp_time_last[CPUSTATES], cp_time_now[CPUSTATES], ticks;
	size_t size;
#endif
	pid_t pid;
	int i;

	pid_list = FUNC6(sizeof(*pid_list) * pflag);
	if (pid_list == NULL)
		FUNC2(-1, "malloc pid_list");
	FUNC1(pid_list, sizeof(*pid_list) * pflag);

	/*
	 * Start workers.
	 */
	for (i = 0; i < pflag; i++) {
		pid = FUNC4();
		if (pid < 0) {
			FUNC12("fork");
			for (i = 0; i < pflag; i++) {
				if (pid_list[i] != 0)
					(void)FUNC5(pid_list[i], SIGKILL);
			}
			FUNC3(-1);
		}
		if (pid == 0) {
			FUNC10(i);
			FUNC3(0);
		}
		pid_list[i] = pid;
	}

#if 0
		size = sizeof(cp_time_last);
		if (sysctlbyname(SYSCTLNAME_CPTIME, &cp_time_last, &size,
		    NULL, 0) < 0)
			err(-1, "sysctlbyname: %s", SYSCTLNAME_CPTIME);
		while (1) {
			sleep(10);
			size = sizeof(cp_time_last);
			if (sysctlbyname(SYSCTLNAME_CPTIME, &cp_time_now,
			    &size, NULL, 0) < 0)
				err(-1, "sysctlbyname: %s",
				    SYSCTLNAME_CPTIME);
			ticks = 0;
			for (i = 0; i < CPUSTATES; i++) {
				cp_time_last[i] = cp_time_now[i] -
				    cp_time_last[i];
				ticks += cp_time_last[i];
			}
			printf("user%% %lu nice%% %lu sys%% %lu intr%% %lu "
			    "idle%% %lu\n",
			    (100 * cp_time_last[CP_USER]) / ticks,
			    (100 * cp_time_last[CP_NICE]) / ticks,
			    (100 * cp_time_last[CP_SYS]) / ticks,
			    (100 * cp_time_last[CP_INTR]) / ticks,
			    (100 * cp_time_last[CP_IDLE]) / ticks);
			bcopy(cp_time_now, cp_time_last, sizeof(cp_time_last));
		}
#endif

	/*
	 * GC workers.
	 */
	for (i = 0; i < pflag; i++) {
		if (pid_list[i] != 0) {
			while (FUNC11(pid_list[i], NULL, 0) != pid_list[i]);
		}
	}
}