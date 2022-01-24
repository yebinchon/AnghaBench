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
struct timespec {int tv_sec; int tv_nsec; } ;
struct tcpp_header {int dummy; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  cp_time_start ;
typedef  int /*<<< orphan*/  cp_time_finish ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int CPUSTATES ; 
 size_t CP_IDLE ; 
 size_t CP_INTR ; 
 size_t CP_NICE ; 
 size_t CP_SYS ; 
 size_t CP_USER ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SYSCTLNAME_CPTIME ; 
 scalar_t__ FUNC0 (int) ; 
 int bflag ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ hflag ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC8 (int) ; 
 int payload_len ; 
 int pflag ; 
 scalar_t__* pid_list ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,long**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int tflag ; 
 int /*<<< orphan*/  FUNC12 (struct timespec*,struct timespec*,struct timespec*) ; 
 scalar_t__ FUNC13 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

void
FUNC15(void)
{
	struct timespec ts_start, ts_finish;
	long cp_time_start[CPUSTATES], cp_time_finish[CPUSTATES];
	long ticks;
	size_t size;
	pid_t pid;
	int i, failed, status;

	if (bflag < sizeof(struct tcpp_header))
		FUNC4(-1, "Can't use -b less than %zu\n",
		   sizeof(struct tcpp_header));
	payload_len = bflag - sizeof(struct tcpp_header);

	pid_list = FUNC8(sizeof(*pid_list) * pflag);
	if (pid_list == NULL)
		FUNC3(-1, "malloc pid_list");
	FUNC1(pid_list, sizeof(*pid_list) * pflag);

	/*
	 * Start workers.
	 */
	size = sizeof(cp_time_start);
	if (FUNC10(SYSCTLNAME_CPTIME, &cp_time_start, &size, NULL, 0)
	    < 0)
		FUNC3(-1, "sysctlbyname: %s", SYSCTLNAME_CPTIME);
	if (FUNC2(CLOCK_REALTIME, &ts_start) < 0)
		FUNC3(-1, "clock_gettime");
	for (i = 0; i < pflag; i++) {
		pid = FUNC6();
		if (pid < 0) {
			FUNC14("fork");
			for (i = 0; i < pflag; i++) {
				if (pid_list[i] != 0)
					(void)FUNC7(pid_list[i], SIGKILL);
			}
			FUNC5(-1);
		}
		if (pid == 0) {
			FUNC11(i);
			FUNC5(0);
		}
		pid_list[i] = pid;
	}

	/*
	 * GC workers.
	 */
	failed = 0;
	for (i = 0; i < pflag; i++) {
		if (pid_list[i] != 0) {
			while (FUNC13(pid_list[i], &status, 0) != pid_list[i]);
			if (FUNC0(status) != 0)
				failed = 1;
		}
	}
	if (FUNC2(CLOCK_REALTIME, &ts_finish) < 0)
		FUNC3(-1, "clock_gettime");
	size = sizeof(cp_time_finish);
	if (FUNC10(SYSCTLNAME_CPTIME, &cp_time_finish, &size, NULL, 0)
	    < 0)
		FUNC3(-1, "sysctlbyname: %s", SYSCTLNAME_CPTIME);
	FUNC12(&ts_finish, &ts_start, &ts_finish);

	if (failed)
		FUNC4(-1, "Too many errors");

	if (hflag)
		FUNC9("bytes,seconds,conn/s,Gb/s,user%%,nice%%,sys%%,"
		    "intr%%,idle%%\n");

	/*
	 * Configuration parameters.
	 */
	FUNC9("%jd,", bflag * tflag * pflag);
	FUNC9("%jd.%09jd,", (intmax_t)ts_finish.tv_sec,
	    (intmax_t)(ts_finish.tv_nsec));

	/*
	 * Effective transmit rates.
	 */
	FUNC9("%f,", (double)(pflag * tflag)/
	    (ts_finish.tv_sec + ts_finish.tv_nsec * 1e-9));
	FUNC9("%f,", (double)(bflag * tflag * pflag * 8) /
	    (ts_finish.tv_sec + ts_finish.tv_nsec * 1e-9) * 1e-9);

	/*
	 * CPU time (est).
	 */
	ticks = 0;
	for (i = 0; i < CPUSTATES; i++) {
		cp_time_finish[i] -= cp_time_start[i];
		ticks += cp_time_finish[i];
	}
	FUNC9("%0.02f,", (float)(100 * cp_time_finish[CP_USER]) / ticks);
	FUNC9("%0.02f,", (float)(100 * cp_time_finish[CP_NICE]) / ticks);
	FUNC9("%0.02f,", (float)(100 * cp_time_finish[CP_SYS]) / ticks);
	FUNC9("%0.02f,", (float)(100 * cp_time_finish[CP_INTR]) / ticks);
	FUNC9("%0.02f", (float)(100 * cp_time_finish[CP_IDLE]) / ticks);
	FUNC9("\n");
}