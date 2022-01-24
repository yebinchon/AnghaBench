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
struct trussinfo {int strsize; int flags; int /*<<< orphan*/ * outfile; int /*<<< orphan*/  start_time; int /*<<< orphan*/  proclist; int /*<<< orphan*/ * curthread; } ;
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/ * abi; } ;

/* Variables and functions */
 int ABSOLUTETIMESTAMPS ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int COUNTONLY ; 
 int DISPLAYTIDS ; 
 int EXECVEARGS ; 
 int EXECVEENVS ; 
 int FOLLOWFORKS ; 
 int /*<<< orphan*/  INT_MAX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NOSIGS ; 
 int /*<<< orphan*/  PT_DETACH ; 
 int /*<<< orphan*/  PT_SYSCALL ; 
 int RELATIVETIMESTAMPS ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct trussinfo*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int FUNC10 (int,char**,char*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC14 (struct trussinfo*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  restore_proc ; 
 int /*<<< orphan*/  FUNC16 (struct trussinfo*,char**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct trussinfo*,scalar_t__) ; 
 int /*<<< orphan*/ * stderr ; 
 int FUNC21 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC22 () ; 

int
FUNC23(int ac, char **av)
{
	struct sigaction sa;
	struct trussinfo *trussinfo;
	char *fname;
	char **command;
	const char *errstr;
	pid_t pid;
	int c;

	fname = NULL;

	/* Initialize the trussinfo struct */
	trussinfo = (struct trussinfo *)FUNC3(1, sizeof(struct trussinfo));
	if (trussinfo == NULL)
		FUNC6(1, "calloc() failed");

	pid = 0;
	trussinfo->outfile = stderr;
	trussinfo->strsize = 32;
	trussinfo->curthread = NULL;
	FUNC1(&trussinfo->proclist);
	FUNC12();
	while ((c = FUNC10(ac, av, "p:o:facedDs:SH")) != -1) {
		switch (c) {
		case 'p':	/* specified pid */
			pid = FUNC2(optarg);
			/* make sure i don't trace me */
			if (pid == FUNC11()) {
				FUNC6(2, "attempt to grab self.");
			}
			break;
		case 'f': /* Follow fork()'s */
			trussinfo->flags |= FOLLOWFORKS;
			break;
		case 'a': /* Print execve() argument strings. */
			trussinfo->flags |= EXECVEARGS;
			break;
		case 'c': /* Count number of system calls and time. */
			trussinfo->flags |= (COUNTONLY | NOSIGS);
			break;
		case 'e': /* Print execve() environment strings. */
			trussinfo->flags |= EXECVEENVS;
			break;
		case 'd': /* Absolute timestamps */
			trussinfo->flags |= ABSOLUTETIMESTAMPS;
			break;
		case 'D': /* Relative timestamps */
			trussinfo->flags |= RELATIVETIMESTAMPS;
			break;
		case 'o':	/* Specified output file */
			fname = optarg;
			break;
		case 's':	/* Specified string size */
			trussinfo->strsize = FUNC21(optarg, 0, INT_MAX, &errstr);
			if (errstr)
				FUNC6(1, "maximum string size is %s: %s", errstr, optarg);
			break;
		case 'S':	/* Don't trace signals */
			trussinfo->flags |= NOSIGS;
			break;
		case 'H':
			trussinfo->flags |= DISPLAYTIDS;
			break;
		default:
			FUNC22();
		}
	}

	ac -= optind; av += optind;
	if ((pid == 0 && ac == 0) ||
	    (pid != 0 && ac != 0))
		FUNC22();

	if (fname != NULL) { /* Use output file */
		/*
		 * Set close-on-exec ('e'), so that the output file is not
		 * shared with the traced process.
		 */
		if ((trussinfo->outfile = FUNC9(fname, "we")) == NULL)
			FUNC5(1, "cannot open %s", fname);
	}

	/*
	 * If truss starts the process itself, it will ignore some signals --
	 * they should be passed off to the process, which may or may not
	 * exit.  If, however, we are examining an already-running process,
	 * then we restore the event mask on these same signals.
	 */
	if (pid == 0) {
		/* Start a command ourselves */
		command = av;
		FUNC16(trussinfo, command);
		FUNC19(SIGINT, SIG_IGN);
		FUNC19(SIGTERM, SIG_IGN);
		FUNC19(SIGQUIT, SIG_IGN);
	} else {
		sa.sa_handler = restore_proc;
		sa.sa_flags = 0;
		FUNC18(&sa.sa_mask);
		FUNC17(SIGINT, &sa, NULL);
		FUNC17(SIGQUIT, &sa, NULL);
		FUNC17(SIGTERM, &sa, NULL);
		FUNC20(trussinfo, pid);
	}

	/*
	 * At this point, if we started the process, it is stopped waiting to
	 * be woken up, either in exit() or in execve().
	 */
	if (FUNC0(&trussinfo->proclist)->abi == NULL) {
		/*
		 * If we are not able to handle this ABI, detach from the
		 * process and exit.  If we just created a new process to
		 * run a command, kill the new process rather than letting
		 * it run untraced.
		 */
		if (pid == 0)
			FUNC13(FUNC0(&trussinfo->proclist)->pid, SIGKILL);
		FUNC15(PT_DETACH, FUNC0(&trussinfo->proclist)->pid, NULL,
		    0);
		return (1);
	}
	FUNC15(PT_SYSCALL, FUNC0(&trussinfo->proclist)->pid, (caddr_t)1,
	    0);

	/*
	 * At this point, it's a simple loop, waiting for the process to
	 * stop, finding out why, printing out why, and then continuing it.
	 * All of the grunt work is done in the support routines.
	 */
	FUNC4(CLOCK_REALTIME, &trussinfo->start_time);

	FUNC7(trussinfo);

	if (trussinfo->flags & COUNTONLY)
		FUNC14(trussinfo);

	FUNC8(trussinfo->outfile);

	return (0);
}