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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_handler; } ;
struct procctl_reaper_status {scalar_t__ rs_children; int rk_sig; scalar_t__ rk_flags; } ;
struct procctl_reaper_kill {scalar_t__ rs_children; int rk_sig; scalar_t__ rk_flags; } ;
struct option {char* member_0; int* member_2; int member_3; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  signums ;
typedef  int /*<<< orphan*/  signals ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ ENOENT ; 
 int EXIT_TIMEOUT ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  PROC_REAP_ACQUIRE ; 
 int /*<<< orphan*/  PROC_REAP_KILL ; 
 int /*<<< orphan*/  PROC_REAP_RELEASE ; 
 int /*<<< orphan*/  PROC_REAP_STATUS ; 
 int /*<<< orphan*/  P_PID ; 
 int /*<<< orphan*/  SA_RESTART ; 
 int SIGALRM ; 
 int SIGCHLD ; 
 int SIGHUP ; 
 int SIGINT ; 
 int SIGKILL ; 
 int SIGQUIT ; 
 int SIGSTOP ; 
 int SIGTERM ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ errno ; 
 int FUNC4 (char*,char**) ; 
 int FUNC5 () ; 
 int FUNC6 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  no_argument ; 
 char* optarg ; 
 scalar_t__ optind ; 
 double FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct procctl_reaper_status*) ; 
 int /*<<< orphan*/  required_argument ; 
 int /*<<< orphan*/  FUNC13 (double) ; 
 scalar_t__ sig_alrm ; 
 scalar_t__ sig_chld ; 
 int /*<<< orphan*/  sig_handler ; 
 int sig_ign ; 
 int sig_term ; 
 int FUNC14 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 (int*) ; 
 int FUNC22 (int,int*,int /*<<< orphan*/ ) ; 

int
FUNC23(int argc, char **argv)
{
	int ch;
	unsigned long i;
	int foreground, preserve;
	int error, pstat, status;
	int killsig = SIGTERM;
	pid_t pid, cpid;
	double first_kill;
	double second_kill;
	bool timedout = false;
	bool do_second_kill = false;
	bool child_done = false;
	struct sigaction signals;
	struct procctl_reaper_status info;
	struct procctl_reaper_kill killemall;
	int signums[] = {
		-1,
		SIGTERM,
		SIGINT,
		SIGHUP,
		SIGCHLD,
		SIGALRM,
		SIGQUIT,
	};

	foreground = preserve = 0;
	second_kill = 0;

	const struct option longopts[] = {
		{ "preserve-status", &no_argument,       preserve,    1 },
		{ "foreground",      &no_argument,       foreground,  1 },
		{ "kill-after",      &required_argument, NULL,        'k'},
		{ "signal",          &required_argument, NULL,        's'},
		{ "help",            &no_argument,       NULL,        'h'},
		{ NULL,              0,                 NULL,         0 }
	};

	while ((ch = FUNC6(argc, argv, "+k:s:h", longopts, NULL)) != -1) {
		switch (ch) {
			case 'k':
				do_second_kill = true;
				second_kill = FUNC10(optarg);
				break;
			case 's':
				killsig = FUNC11(optarg);
				break;
			case 0:
				break;
			case 'h':
			default:
				FUNC20();
				break;
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 2)
		FUNC20();

	first_kill = FUNC10(argv[0]);
	argc--;
	argv++;

	if (!foreground) {
		/* Acquire a reaper */
		if (FUNC12(P_PID, FUNC7(), PROC_REAP_ACQUIRE, NULL) == -1)
			FUNC3(EX_OSERR, "Fail to acquire the reaper");
	}

	FUNC9(&signals, 0, sizeof(signals));
	FUNC16(&signals.sa_mask);

	if (killsig != SIGKILL && killsig != SIGSTOP)
		signums[0] = killsig;

	for (i = 0; i < sizeof(signums) / sizeof(signums[0]); i ++)
		FUNC15(&signals.sa_mask, signums[i]);

	signals.sa_handler = sig_handler;
	signals.sa_flags = SA_RESTART;

	for (i = 0; i < sizeof(signums) / sizeof(signums[0]); i ++)
		if (signums[i] != -1 && signums[i] != 0 &&
		    FUNC14(signums[i], &signals, NULL) == -1)
			FUNC3(EX_OSERR, "sigaction()");

	FUNC17(SIGTTIN, SIG_IGN);
	FUNC17(SIGTTOU, SIG_IGN);

	pid = FUNC5();
	if (pid == -1)
		FUNC3(EX_OSERR, "fork()");
	else if (pid == 0) {
		/* child process */
		FUNC17(SIGTTIN, SIG_DFL);
		FUNC17(SIGTTOU, SIG_DFL);

		error = FUNC4(argv[0], argv);
		if (error == -1) {
			if (errno == ENOENT)
				FUNC3(127, "exec(%s)", argv[0]);
			else
				FUNC3(126, "exec(%s)", argv[0]);
		}
	}

	if (FUNC18(SIG_BLOCK, &signals.sa_mask, NULL) == -1)
		FUNC3(EX_OSERR, "sigprocmask()");

	/* parent continues here */
	FUNC13(first_kill);

	for (;;) {
		FUNC16(&signals.sa_mask);
		FUNC19(&signals.sa_mask);

		if (sig_chld) {
			sig_chld = 0;

			while ((cpid = FUNC22(-1, &status, WNOHANG)) != 0) {
				if (cpid < 0) {
					if (errno == EINTR)
						continue;
					else
						break;
				} else if (cpid == pid) {
					pstat = status;
					child_done = true;
				}
			}
			if (child_done) {
				if (foreground) {
					break;
				} else {
					FUNC12(P_PID, FUNC7(),
					    PROC_REAP_STATUS, &info);
					if (info.rs_children == 0)
						break;
				}
			}
		} else if (sig_alrm) {
			sig_alrm = 0;

			timedout = true;
			if (!foreground) {
				killemall.rk_sig = killsig;
				killemall.rk_flags = 0;
				FUNC12(P_PID, FUNC7(), PROC_REAP_KILL,
				    &killemall);
			} else
				FUNC8(pid, killsig);

			if (do_second_kill) {
				FUNC13(second_kill);
				second_kill = 0;
				sig_ign = killsig;
				killsig = SIGKILL;
			} else
				break;

		} else if (sig_term) {
			if (!foreground) {
				killemall.rk_sig = sig_term;
				killemall.rk_flags = 0;
				FUNC12(P_PID, FUNC7(), PROC_REAP_KILL,
				    &killemall);
			} else
				FUNC8(pid, sig_term);

			if (do_second_kill) {
				FUNC13(second_kill);
				second_kill = 0;
				sig_ign = killsig;
				killsig = SIGKILL;
			} else
				break;
		}
	}

	while (!child_done && FUNC21(&pstat) == -1) {
		if (errno != EINTR)
			FUNC3(EX_OSERR, "waitpid()");
	}

	if (!foreground)
		FUNC12(P_PID, FUNC7(), PROC_REAP_RELEASE, NULL);

	if (FUNC0(pstat))
		pstat = FUNC0(pstat);
	else if(FUNC1(pstat))
		pstat = 128 + FUNC2(pstat);

	if (timedout && !preserve)
		pstat = EXIT_TIMEOUT;

	return (pstat);
}