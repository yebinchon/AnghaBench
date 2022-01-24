#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct timespec {int dummy; } ;
struct TYPE_5__ {int tv_sec; int tv_usec; } ;
struct TYPE_4__ {int tv_sec; int tv_usec; } ;
struct rusage {int ru_maxrss; int ru_ixrss; int ru_idrss; int ru_isrss; int ru_minflt; int ru_majflt; int ru_nswap; int ru_inblock; int ru_oublock; int ru_msgsnd; int ru_msgrcv; int ru_nsignals; int ru_nvcsw; int ru_nivcsw; TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_6__ {int /*<<< orphan*/ * decimal_point; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int /*<<< orphan*/  RUSAGE_CHILDREN ; 
 int SIGINFO ; 
 int SIGINT ; 
 int SIGQUIT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  _IONBF ; 
 struct timespec before_ts ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  decimal_point ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (char*,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int FUNC11 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct rusage*) ; 
 int FUNC14 () ; 
 int hflag ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC16 () ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int pflag ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct timespec*,struct timespec*,struct rusage*) ; 
 int /*<<< orphan*/  siginfo ; 
 scalar_t__ siginfo_recvd ; 
 int /*<<< orphan*/  FUNC21 (int,int) ; 
 scalar_t__ FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC23 () ; 
 scalar_t__ FUNC24 (scalar_t__,int*,int /*<<< orphan*/ ,struct rusage*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 

int
FUNC27(int argc, char **argv)
{
	int aflag, ch, lflag, status;
	int exitonsig;
	pid_t pid;
	struct rlimit rl;
	struct rusage ru;
	struct timespec after;
	char *ofn = NULL;
	FILE *out = stderr;

	(void) FUNC17(LC_NUMERIC, "");
	decimal_point = FUNC16()->decimal_point[0];

	aflag = hflag = lflag = pflag = 0;
	while ((ch = FUNC11(argc, argv, "ahlo:p")) != -1)
		switch((char)ch) {
		case 'a':
			aflag = 1;
			break;
		case 'h':
			hflag = 1;
			break;
		case 'l':
			lflag = 1;
			break;
		case 'o':
			ofn = optarg;
			break;
		case 'p':
			pflag = 1;
			break;
		case '?':
		default:
			FUNC23();
		}

	if (!(argc -= optind))
		FUNC7(0);
	argv += optind;

	if (ofn) {
	        if ((out = FUNC8(ofn, aflag ? "ae" : "we")) == NULL)
		        FUNC5(1, "%s", ofn);
		FUNC19(out, (char *)NULL, _IONBF, (size_t)0);
	}

	if (FUNC4(CLOCK_MONOTONIC, &before_ts))
		FUNC5(1, "clock_gettime");
	switch(pid = FUNC9()) {
	case -1:			/* error */
		FUNC5(1, "time");
		/* NOTREACHED */
	case 0:				/* child */
		FUNC6(*argv, argv);
		FUNC5(errno == ENOENT ? 127 : 126, "%s", *argv);
		/* NOTREACHED */
	}
	/* parent */
	(void)FUNC22(SIGINT, SIG_IGN);
	(void)FUNC22(SIGQUIT, SIG_IGN);
	siginfo_recvd = 0;
	(void)FUNC22(SIGINFO, siginfo);
	(void)FUNC21(SIGINFO, 1);
	while (FUNC24(pid, &status, 0, &ru) != pid) {
		if (siginfo_recvd) {
			siginfo_recvd = 0;
			if (FUNC4(CLOCK_MONOTONIC, &after))
				FUNC5(1, "clock_gettime");
			FUNC13(RUSAGE_CHILDREN, &ru);
			FUNC20(stdout, &before_ts, &after, &ru);
		}
	}
	if (FUNC4(CLOCK_MONOTONIC, &after))
		FUNC5(1, "clock_gettime");
	if ( ! FUNC1(status))
		FUNC26("command terminated abnormally");
	exitonsig = FUNC2(status) ? FUNC3(status) : 0;
	FUNC20(out, &before_ts, &after, &ru);
	if (lflag) {
		int hz = FUNC14();
		u_long ticks;

		ticks = hz * (ru.ru_utime.tv_sec + ru.ru_stime.tv_sec) +
		     hz * (ru.ru_utime.tv_usec + ru.ru_stime.tv_usec) / 1000000;

		/*
		 * If our round-off on the tick calculation still puts us at 0,
		 * then always assume at least one tick.
		 */
		if (ticks == 0)
			ticks = 1;

		FUNC10(out, "%10ld  %s\n",
			ru.ru_maxrss, "maximum resident set size");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_ixrss / ticks, "average shared memory size");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_idrss / ticks, "average unshared data size");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_isrss / ticks, "average unshared stack size");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_minflt, "page reclaims");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_majflt, "page faults");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_nswap, "swaps");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_inblock, "block input operations");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_oublock, "block output operations");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_msgsnd, "messages sent");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_msgrcv, "messages received");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_nsignals, "signals received");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_nvcsw, "voluntary context switches");
		FUNC10(out, "%10ld  %s\n",
			ru.ru_nivcsw, "involuntary context switches");
	}
	/*
	 * If the child has exited on a signal, exit on the same
	 * signal, too, in order to reproduce the child's exit status.
	 * However, avoid actually dumping core from the current process.
	 */
	if (exitonsig) {
		if (FUNC22(exitonsig, SIG_DFL) == SIG_ERR)
			FUNC25("signal");
		else {
			rl.rlim_max = rl.rlim_cur = 0;
			if (FUNC18(RLIMIT_CORE, &rl) == -1)
				FUNC25("setrlimit");
			FUNC15(FUNC12(), exitonsig);
		}
	}
	FUNC7 (FUNC1(status) ? FUNC0(status) : EXIT_FAILURE);
}