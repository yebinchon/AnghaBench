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
union semun {int val; struct semid_ds* buf; } ;
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct TYPE_2__ {int mode; } ;
struct semid_ds {TYPE_1__ sem_perm; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  s_ds ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  GETNCNT ; 
 int IPC_CREAT ; 
 int IPC_EXCL ; 
 int /*<<< orphan*/  IPC_SET ; 
 int /*<<< orphan*/  IPC_STAT ; 
 int /*<<< orphan*/  SETVAL ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGSYS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int child_count ; 
 int /*<<< orphan*/  child_pid ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct semid_ds*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct semid_ds*,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  semkey ; 
 int sender_semid ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigchld_handler ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ signal_was_sigchld ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigsys_handler ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char *argv[])
{
	struct sigaction sa;
	union semun sun;
	struct semid_ds s_ds;
	sigset_t sigmask;
	int i;

	if (argc != 2)
		FUNC13();

	/*
	 * Install a SIGSYS handler so that we can exit gracefully if
	 * System V Semaphore support isn't in the kernel.
	 */
	sa.sa_handler = sigsys_handler;
	FUNC11(&sa.sa_mask);
	sa.sa_flags = 0;
	if (FUNC10(SIGSYS, &sa, NULL) == -1)
		FUNC1(1, "sigaction SIGSYS");

	/*
	 * Install and SIGCHLD handler to deal with all possible exit
	 * conditions of the receiver.
	 */
	sa.sa_handler = sigchld_handler;
	FUNC11(&sa.sa_mask);
	sa.sa_flags = 0;
	if (FUNC10(SIGCHLD, &sa, NULL) == -1)
		FUNC1(1, "sigaction SIGCHLD");

	semkey = FUNC4(argv[1], 4160);

	/*
	 * Initialize child_pid to ourselves to that the cleanup function
	 * works before we create the receiver.
	 */
	child_pid = FUNC5();

	/*
	 * Make sure that when the sender exits, the message queue is
	 * removed.
	 */
	if (FUNC0(cleanup) == -1)
		FUNC1(1, "atexit");

	if ((sender_semid = FUNC9(semkey, 1, IPC_CREAT | 0640)) == -1)
		FUNC1(1, "semget");

	
	sun.buf = &s_ds;
	if (FUNC8(sender_semid, 0, IPC_STAT, sun) == -1)
		FUNC1(1, "semctl IPC_STAT");

	FUNC7(&s_ds, 0640);

	s_ds.sem_perm.mode = (s_ds.sem_perm.mode & ~0777) | 0600;

	sun.buf = &s_ds;
	if (FUNC8(sender_semid, 0, IPC_SET, sun) == -1)
		FUNC1(1, "semctl IPC_SET");

	FUNC6(&s_ds, 0, sizeof(s_ds));

	sun.buf = &s_ds;
	if (FUNC8(sender_semid, 0, IPC_STAT, sun) == -1)
		FUNC1(1, "semctl IPC_STAT");

	if ((s_ds.sem_perm.mode & 0777) != 0600)
		FUNC1(1, "IPC_SET of mode didn't hold");

	FUNC7(&s_ds, 0600);

	errno = 0;
	if (FUNC9(semkey, 1, IPC_CREAT | IPC_EXCL | 0600) != -1 ||
	    errno != EEXIST)
		FUNC1(1, "semget IPC_EXCL 1 did not fail with [EEXIST]");
	errno = 0;
	if (FUNC9(semkey, 2, IPC_CREAT | IPC_EXCL | 0600) != -1 ||
	    errno != EEXIST)
		FUNC1(1, "semget IPC_EXCL 2 did not fail with [EEXIST]");

	for (child_count = 0; child_count < 5; child_count++) {
		switch ((child_pid = FUNC3())) {
		case -1:
			FUNC1(1, "fork");
			/* NOTREACHED */

		case 0:
			FUNC14();
			break;

		default:
			break;
		}
	}

	/*
	 * Wait for all of the waiters to be attempting to acquire the
	 * semaphore.
	 */
	for (;;) {
		i = FUNC8(sender_semid, 0, GETNCNT);
		if (i == -1)
			FUNC1(1, "semctl GETNCNT");
		if (i == 5)
			break;
	}

	/*
	 * Now set the thundering herd in motion by initializing the
	 * semaphore to the value 1.
	 */
	sun.val = 1;
	if (FUNC8(sender_semid, 0, SETVAL, sun) == -1)
		FUNC1(1, "sender: semctl SETVAL to 1");

	/*
	 * Suspend forever; when we get SIGCHLD, the handler will exit.
	 */
	FUNC11(&sigmask);
	for (;;) {
		(void) FUNC12(&sigmask);
		if (signal_was_sigchld)
			signal_was_sigchld = 0;
		else
			break;
	}

	/*
	 * ...and any other signal is an unexpected error.
	 */
	FUNC2(1, "sender: received unexpected signal");
}