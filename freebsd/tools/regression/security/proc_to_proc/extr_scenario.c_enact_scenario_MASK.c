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
typedef  int pid_t ;
struct TYPE_2__ {int sc_canptrace_errno; int sc_canktrace_errno; int sc_cansighup_errno; int sc_cansigsegv_errno; int sc_cansee_errno; int sc_cansched_errno; char* sc_name; int /*<<< orphan*/  sc_cred2; int /*<<< orphan*/  sc_cred1; } ;

/* Variables and functions */
 int /*<<< orphan*/  KTRFAC_SYSCALL ; 
 int /*<<< orphan*/  KTROP_SET ; 
#define  LOOP_KTRACE 133 
 int LOOP_MAX ; 
#define  LOOP_PTRACE 132 
#define  LOOP_SCHED 131 
#define  LOOP_SEE 130 
#define  LOOP_SIGHUP 129 
#define  LOOP_SIGSEGV 128 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int /*<<< orphan*/  PT_ATTACH ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* scenarios ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(int scenario)
{
	pid_t pid1, pid2;
	char *name, *tracefile;
	int error, desirederror, loop;

	for (loop = 0; loop < LOOP_MAX+1; loop++) {
		/*
		 * Spawn the first child, target of the operation.
		 */
		pid1 = FUNC4();
		switch (pid1) {
		case -1:
			return (-1);
		case 0:
			/* child */
			error = FUNC1(scenarios[scenario].sc_cred2);
			if (error) {
				FUNC10("cred_set");
				return (error);
			}
			/* 200 seconds should be plenty of time. */
			FUNC13(200);
			FUNC3(0);
		default:
			/* parent */
			break;
		}

		/*
		 * XXX
		 * This really isn't ideal -- give proc 1 a chance to set
		 * its credentials, or we may get spurious errors.  Really,
		 * some for of IPC should be used to allow the parent to
		 * wait for the first child to be ready before spawning
		 * the second child.
		 */
		FUNC13(1);

		/*
		 * Spawn the second child, source of the operation.
		 */
		pid2 = FUNC4();
		switch (pid2) {
		case -1:
			return (-1);
	
		case 0:
			/* child */
			error = FUNC1(scenarios[scenario].sc_cred1);
			if (error) {
				FUNC10("cred_set");
				return (error);
			}
	
			/*
			 * Initialize errno to zero so as to catch any
			 * generated errors.  In each case, perform the
			 * operation.  Preserve the error number for later
			 * use so it doesn't get stomped on by any I/O.
			 * Determine the desired error for the given case
			 * by extracting it from the scenario table.
			 * Initialize a function name string for output
			 * prettiness.
			 */
			errno = 0;
			switch (loop) {
			case LOOP_PTRACE:
				error = FUNC11(PT_ATTACH, pid1, NULL, 0);
				error = errno;
				name = "ptrace";
				desirederror =
				    scenarios[scenario].sc_canptrace_errno;
				break;
			case LOOP_KTRACE:
				tracefile = FUNC9("/tmp/testuid_ktrace.XXXXXX");
				if (tracefile == NULL) {
					error = errno;
					FUNC10("mktemp");
					break;
				}
				error = FUNC8(tracefile, KTROP_SET,
				    KTRFAC_SYSCALL, pid1);
				error = errno;
				name = "ktrace";
				desirederror =
				    scenarios[scenario].sc_canktrace_errno;
				FUNC14(tracefile);
				break;
			case LOOP_SIGHUP:
				error = FUNC7(pid1, SIGHUP);
				error = errno;
				name = "sighup";
				desirederror =
				    scenarios[scenario].sc_cansighup_errno;
				break;
			case LOOP_SIGSEGV:
				error = FUNC7(pid1, SIGSEGV);
				error = errno;
				name = "sigsegv";
				desirederror =
				    scenarios[scenario].sc_cansigsegv_errno;
				break;
			case LOOP_SEE:
				FUNC6(PRIO_PROCESS, pid1);
				error = errno;
				name = "see";
				desirederror =
				    scenarios[scenario].sc_cansee_errno;
				break;
			case LOOP_SCHED:
				error = FUNC12(PRIO_PROCESS, pid1,
				   0);
				error = errno;
				name = "sched";
				desirederror =
				    scenarios[scenario].sc_cansched_errno;
				break;
			default:
				name = "broken";
			}

			if (error != desirederror) {
				FUNC5(stdout,
				    "[%s].%s: expected %s, got %s\n  ",
				    scenarios[scenario].sc_name, name,
				    FUNC2(desirederror),
				    FUNC2(error));
				FUNC0(stdout,
				    scenarios[scenario].sc_cred1);
				FUNC0(stdout,
				    scenarios[scenario].sc_cred2);
				FUNC5(stdout, "\n");
			}

			FUNC3(0);

		default:
			/* parent */
			break;
		}

		error = FUNC15(pid2, NULL, 0);
		/*
		 * Once pid2 has died, it's safe to kill pid1, if it's still
		 * alive.  Mask signal failure in case the test actually
		 * killed pid1 (not unlikely: can occur in both signal and
		 * ptrace cases).
		 */
		FUNC7(pid1, SIGKILL);
		error = FUNC15(pid2, NULL, 0);
	}
	
	return (0);
}