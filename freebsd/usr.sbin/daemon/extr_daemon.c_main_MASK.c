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
struct sigaction {int outfd; int dosyslog; int logpri; int noclose; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct pidfh {int dummy; } ;
struct log_params {int outfd; int dosyslog; int logpri; int noclose; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  logpar ;
typedef  int /*<<< orphan*/  act_term ;
typedef  int /*<<< orphan*/  act_chld ;

/* Variables and functions */
 int LOG_DAEMON ; 
 int LOG_NDELAY ; 
 int LOG_NOTICE ; 
 int LOG_PID ; 
 int /*<<< orphan*/  MADV_PROTECT ; 
 int O_APPEND ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int STDERR_FILENO ; 
 int STDOUT_FILENO ; 
 scalar_t__ child_gone ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char**) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  facilitynames ; 
 int FUNC9 () ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,char**,char*) ; 
 int /*<<< orphan*/  handle_chld ; 
 int /*<<< orphan*/  handle_term ; 
 int /*<<< orphan*/  FUNC12 (int,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char const*,struct pidfh**,struct pidfh**) ; 
 int /*<<< orphan*/  FUNC17 (char const*,int,int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int pid ; 
 int /*<<< orphan*/  FUNC18 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC19 (struct pidfh*) ; 
 scalar_t__ FUNC20 (int*) ; 
 int /*<<< orphan*/  prioritynames ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char const*,int) ; 
 int FUNC23 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (char*,char**,int) ; 
 scalar_t__ terminate ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 

int
FUNC31(int argc, char *argv[])
{
	const char *pidfile, *ppidfile, *title, *user, *outfn, *logtag;
	int ch, nochdir, noclose, restart, dosyslog, child_eof;
	sigset_t mask_susp, mask_orig, mask_read, mask_term;
	struct log_params logpar;
	int pfd[2] = { -1, -1 }, outfd = -1;
	int stdmask, logpri, logfac;
	struct pidfh *ppfh, *pfh;
	char *p;

	FUNC14(&logpar, 0, sizeof(logpar));
	stdmask = STDOUT_FILENO | STDERR_FILENO;
	ppidfile = pidfile = user = NULL;
	nochdir = noclose = 1;
	logpri = LOG_NOTICE;
	logfac = LOG_DAEMON;
	logtag = "daemon";
	restart = 0;
	dosyslog = 0;
	outfn = NULL;
	title = NULL;
	while ((ch = FUNC11(argc, argv, "cfSp:P:ru:o:s:l:t:l:m:R:T:")) != -1) {
		switch (ch) {
		case 'c':
			nochdir = 0;
			break;
		case 'f':
			noclose = 0;
			break;
		case 'l':
			logfac = FUNC10(optarg, facilitynames);
			if (logfac == -1)
				FUNC6(5, "unrecognized syslog facility");
			dosyslog = 1;
			break;
		case 'm':
			stdmask = FUNC28(optarg, &p, 10);
			if (p == optarg || stdmask < 0 || stdmask > 3)
				FUNC6(6, "unrecognized listening mask");
			break;
		case 'o':
			outfn = optarg;
			break;
		case 'p':
			pidfile = optarg;
			break;
		case 'P':
			ppidfile = optarg;
			break;
		case 'r':
			restart = 1;
			break;
		case 'R':
			restart = FUNC28(optarg, &p, 0);
			if (p == optarg || restart < 1)
				FUNC6(6, "invalid restart delay");
			break;
		case 's':
			logpri = FUNC10(optarg, prioritynames);
			if (logpri == -1)
				FUNC6(4, "unrecognized syslog priority");
			dosyslog = 1;
			break;
		case 'S':
			dosyslog = 1;
			break;
		case 't':
			title = optarg;
			break;
		case 'T':
			logtag = optarg;
			dosyslog = 1;
			break;
		case 'u':
			user = optarg;
			break;
		default:
			FUNC29();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc == 0)
		FUNC29();

	if (!title)
		title = argv[0];

	if (outfn) {
		outfd = FUNC15(outfn, O_CREAT | O_WRONLY | O_APPEND | O_CLOEXEC, 0600);
		if (outfd == -1)
			FUNC5(7, "open");
	}
	
	if (dosyslog)
		FUNC17(logtag, LOG_PID | LOG_NDELAY, logfac);

	ppfh = pfh = NULL;
	/*
	 * Try to open the pidfile before calling daemon(3),
	 * to be able to report the error intelligently
	 */
	FUNC16(pidfile, ppidfile, &pfh, &ppfh);
	if (FUNC2(nochdir, noclose) == -1) {
		FUNC30("daemon");
		goto exit;
	}
	/* Write out parent pidfile if needed. */
	FUNC19(ppfh);
	/*
	 * If the pidfile or restart option is specified the daemon
	 * executes the command in a forked process and wait on child
	 * exit to remove the pidfile or restart the command. Normally
	 * we don't want the monitoring daemon to be terminated
	 * leaving the running process and the stale pidfile, so we
	 * catch SIGTERM and forward it to the children expecting to
	 * get SIGCHLD eventually. We also must fork() to obtain a
	 * readable pipe with the child for writing to a log file
	 * and syslog.
	 */
	pid = -1;
	if (pidfile || ppidfile || restart || outfd != -1 || dosyslog) {
		struct sigaction act_term, act_chld;

		/* Avoid PID racing with SIGCHLD and SIGTERM. */
		FUNC14(&act_term, 0, sizeof(act_term));
		act_term.sa_handler = handle_term;
		FUNC25(&act_term.sa_mask);
		FUNC24(&act_term.sa_mask, SIGCHLD);

		FUNC14(&act_chld, 0, sizeof(act_chld));
		act_chld.sa_handler = handle_chld;
		FUNC25(&act_chld.sa_mask);
		FUNC24(&act_chld.sa_mask, SIGTERM);

		/* Block these when avoiding racing before sigsuspend(). */
		FUNC25(&mask_susp);
		FUNC24(&mask_susp, SIGTERM);
		FUNC24(&mask_susp, SIGCHLD);
		/* Block SIGTERM when we lack a valid child PID. */
		FUNC25(&mask_term);
		FUNC24(&mask_term, SIGTERM);
		/*
		 * When reading, we wish to avoid SIGCHLD. SIGTERM
		 * has to be caught, otherwise we'll be stuck until
		 * the read() returns - if it returns.
		 */
		FUNC25(&mask_read);
		FUNC24(&mask_read, SIGCHLD);
		/* Block SIGTERM to avoid racing until we have forked. */
		if (FUNC26(SIG_BLOCK, &mask_term, &mask_orig)) {
			FUNC30("sigprocmask");
			goto exit;
		}
		if (FUNC23(SIGTERM, &act_term, NULL) == -1) {
			FUNC30("sigaction");
			goto exit;
		}
		if (FUNC23(SIGCHLD, &act_chld, NULL) == -1) {
			FUNC30("sigaction");
			goto exit;
		}
		/*
		 * Try to protect against pageout kill. Ignore the
		 * error, madvise(2) will fail only if a process does
		 * not have superuser privileges.
		 */
		(void)FUNC13(NULL, 0, MADV_PROTECT);
		logpar.outfd = outfd;
		logpar.dosyslog = dosyslog;
		logpar.logpri = logpri;
		logpar.noclose = noclose;
restart:
		if (FUNC20(pfd))
			FUNC5(1, "pipe");
		/*
		 * Spawn a child to exec the command.
		 */
		child_gone = 0;
		pid = FUNC9();
		if (pid == -1) {
			FUNC30("fork");
			goto exit;
		} else if (pid > 0) {
			/*
			 * Unblock SIGTERM after we know we have a valid
			 * child PID to signal.
			 */
			if (FUNC26(SIG_UNBLOCK, &mask_term, NULL)) {
				FUNC30("sigprocmask");
				goto exit;
			}
			FUNC0(pfd[1]);
			pfd[1] = -1;
		}
	}
	if (pid <= 0) {
		/* Now that we are the child, write out the pid. */
		FUNC19(pfh);

		if (user != NULL)
			FUNC21(user);
		/*
		 * When forking, the child gets the original sigmask,
		 * and dup'd pipes.
		 */
		if (pid == 0) {
			FUNC0(pfd[0]);
			if (FUNC26(SIG_SETMASK, &mask_orig, NULL))
				FUNC5(1, "sigprogmask");
			if (stdmask & STDERR_FILENO) {
				if (FUNC4(pfd[1], STDERR_FILENO) == -1)
					FUNC5(1, "dup2");
			}
			if (stdmask & STDOUT_FILENO) {
				if (FUNC4(pfd[1], STDOUT_FILENO) == -1)
					FUNC5(1, "dup2");
			}
			if (pfd[1] != STDERR_FILENO &&
			    pfd[1] != STDOUT_FILENO)
				FUNC0(pfd[1]);
		}
		FUNC7(argv[0], argv);
		/*
		 * execvp() failed -- report the error. The child is
		 * now running, so the exit status doesn't matter.
		 */
		FUNC5(1, "%s", argv[0]);
	}
	FUNC22("%s[%d]", title, (int)pid);
	/*
	 * As we have closed the write end of pipe for parent process,
	 * we might detect the child's exit by reading EOF. The child
	 * might have closed its stdout and stderr, so we must wait for
	 * the SIGCHLD to ensure that the process is actually gone.
	 */
	child_eof = 0;
	for (;;) {
		/*
		 * We block SIGCHLD when listening, but SIGTERM we accept
		 * so the read() won't block if we wish to depart.
		 *
		 * Upon receiving SIGTERM, we have several options after
		 * sending the SIGTERM to our child:
		 * - read until EOF
		 * - read until EOF but only for a while
		 * - bail immediately
		 *
		 * We go for the third, as otherwise we have no guarantee
		 * that we won't block indefinitely if the child refuses
		 * to depart. To handle the second option, a different
		 * approach would be needed (procctl()?)
		 */
		if (child_gone && child_eof) {
			break;
		} else if (terminate) {
			goto exit;
		} else if (!child_eof) {
			if (FUNC26(SIG_BLOCK, &mask_read, NULL)) {
				FUNC30("sigprocmask");
				goto exit;
			}
			child_eof = !FUNC12(pfd[0], &logpar);
			if (FUNC26(SIG_UNBLOCK, &mask_read, NULL)) {
				FUNC30("sigprocmask");
				goto exit;
			}
		} else {
			if (FUNC26(SIG_BLOCK, &mask_susp, NULL)) {
				FUNC30("sigprocmask");
	 			goto exit;
			}
			while (!terminate && !child_gone)
				FUNC27(&mask_orig);
			if (FUNC26(SIG_UNBLOCK, &mask_susp, NULL)) {
				FUNC30("sigprocmask");
				goto exit;
			}
		}
	}
	if (restart && !terminate)
		FUNC3(restart, 0);
	if (FUNC26(SIG_BLOCK, &mask_term, NULL)) {
		FUNC30("sigprocmask");
		goto exit;
	}
	if (restart && !terminate) {
		FUNC0(pfd[0]);
		pfd[0] = -1;
		goto restart;
	}
exit:
	FUNC0(outfd);
	FUNC0(pfd[0]);
	FUNC0(pfd[1]);
	if (dosyslog)
		FUNC1();
	FUNC18(pfh);
	FUNC18(ppfh);
	FUNC8(1); /* If daemon(3) succeeded exit status does not matter. */
}