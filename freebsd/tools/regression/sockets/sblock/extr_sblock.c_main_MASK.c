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
struct sigaction {int sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PF_LOCAL ; 
 int SA_RESTART ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGKILL ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int
FUNC12(void)
{
	int error, fds[2], recver_fd, sender_fd;
	pid_t blocking_recver_pid;
	pid_t locking_recver_pid;
	struct sigaction sa;

	if (FUNC8(SIGHUP, NULL, &sa) < 0)
		FUNC2(-1, "FAIL: sigaction(SIGHUP, NULL, &sa)");

	sa.sa_handler = signal_handler;
	if (sa.sa_flags & SA_RESTART)
		FUNC7("SIGHUP restartable by default (cleared)\n");
	sa.sa_flags &= ~SA_RESTART;

	if (FUNC8(SIGHUP, &sa, NULL) < 0)
		FUNC2(-1, "FAIL: sigaction(SIGHUP, &sa, NULL)");

#if 0
	if (signal(SIGHUP, signal_handler) == SIG_ERR)
		err(-1, "FAIL: signal(SIGHUP)");
#endif

	if (FUNC11(PF_LOCAL, SOCK_STREAM, 0, fds) < 0)
		FUNC2(-1, "FAIL: socketpair(PF_LOCAL, SOGK_STREAM, 0)");

	sender_fd = fds[0];
	recver_fd = fds[1];

	blocking_recver_pid = FUNC4();
	if (blocking_recver_pid < 0)
		FUNC2(-1, "FAIL: fork");
	if (blocking_recver_pid == 0) {
		FUNC1(sender_fd);
		FUNC0(recver_fd);
		FUNC3(0);
	}

	locking_recver_pid = FUNC4();
	if (locking_recver_pid < 0) {
		error = errno;
		FUNC5(blocking_recver_pid, SIGKILL);
		errno = error;
		FUNC2(-1, "FAIL: fork");
	}
	if (locking_recver_pid == 0) {
		FUNC1(sender_fd);
		FUNC6(recver_fd);
		FUNC3(0);
	}

	FUNC10(locking_recver_pid, sender_fd);

	FUNC5(blocking_recver_pid, SIGKILL);
	FUNC5(locking_recver_pid, SIGKILL);
	FUNC3(0);
}