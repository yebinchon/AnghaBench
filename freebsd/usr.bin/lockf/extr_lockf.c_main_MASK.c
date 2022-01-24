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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int EX_SOFTWARE ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int O_CREAT ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int FUNC12 (int,char**,char*) ; 
 int keep ; 
 int /*<<< orphan*/  killed ; 
 int lockfd ; 
 char* lockname ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timed_out ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 

int
FUNC21(int argc, char **argv)
{
	int ch, flags, silent, status, waitsec;
	pid_t child;

	silent = keep = 0;
	flags = O_CREAT;
	waitsec = -1;	/* Infinite. */
	while ((ch = FUNC12(argc, argv, "sknt:")) != -1) {
		switch (ch) {
		case 'k':
			keep = 1;
			break;
		case 'n':
			flags &= ~O_CREAT;
			break;
		case 's':
			silent = 1;
			break;
		case 't':
		{
			char *endptr;
			waitsec = FUNC16(optarg, &endptr, 0);
			if (*optarg == '\0' || *endptr != '\0' || waitsec < 0)
				FUNC8(EX_USAGE,
				    "invalid timeout \"%s\"", optarg);
		}
			break;
		default:
			FUNC17();
		}
	}
	if (argc - optind < 2)
		FUNC17();
	lockname = argv[optind++];
	argc -= optind;
	argv += optind;
	if (waitsec > 0) {		/* Set up a timeout. */
		struct sigaction act;

		act.sa_handler = timeout;
		FUNC14(&act.sa_mask);
		act.sa_flags = 0;	/* Note that we do not set SA_RESTART. */
		FUNC13(SIGALRM, &act, NULL);
		FUNC4(waitsec);
	}
	/*
	 * If the "-k" option is not given, then we must not block when
	 * acquiring the lock.  If we did, then the lock holder would
	 * unlink the file upon releasing the lock, and we would acquire
	 * a lock on a file with no directory entry.  Then another
	 * process could come along and acquire the same lock.  To avoid
	 * this problem, we separate out the actions of waiting for the
	 * lock to be available and of actually acquiring the lock.
	 *
	 * That approach produces behavior that is technically correct;
	 * however, it causes some performance & ordering problems for
	 * locks that have a lot of contention.  First, it is unfair in
	 * the sense that a released lock isn't necessarily granted to
	 * the process that has been waiting the longest.  A waiter may
	 * be starved out indefinitely.  Second, it creates a thundering
	 * herd situation each time the lock is released.
	 *
	 * When the "-k" option is used, the unlink race no longer
	 * exists.  In that case we can block while acquiring the lock,
	 * avoiding the separate step of waiting for the lock.  This
	 * yields fairness and improved performance.
	 */
	lockfd = FUNC3(lockname, flags | O_NONBLOCK);
	while (lockfd == -1 && !timed_out && waitsec != 0) {
		if (keep)
			lockfd = FUNC3(lockname, flags);
		else {
			FUNC18(lockname);
			lockfd = FUNC3(lockname, flags | O_NONBLOCK);
		}
	}
	if (waitsec > 0)
		FUNC4(0);
	if (lockfd == -1) {		/* We failed to acquire the lock. */
		if (silent)
			FUNC10(EX_TEMPFAIL);
		FUNC8(EX_TEMPFAIL, "%s: already locked", lockname);
	}
	/* At this point, we own the lock. */
	if (FUNC5(cleanup) == -1)
		FUNC7(EX_OSERR, "atexit failed");
	if ((child = FUNC11()) == -1)
		FUNC7(EX_OSERR, "cannot fork");
	if (child == 0) {	/* The child process. */
		FUNC6(lockfd);
		FUNC9(argv[0], argv);
		FUNC20("%s", argv[0]);
		FUNC2(1);
	}
	/* This is the parent process. */
	FUNC15(SIGINT, SIG_IGN);
	FUNC15(SIGQUIT, SIG_IGN);
	FUNC15(SIGTERM, killed);
	if (FUNC19(child, &status, 0) == -1)
		FUNC7(EX_OSERR, "waitpid failed");
	return (FUNC1(status) ? FUNC0(status) : EX_SOFTWARE);
}