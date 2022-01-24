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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  BATT_CHK_INTV ; 
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int apmctl_fd ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  enque_signal ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int* signal_fd ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC15(void)
{
	int		fdmax = 0;
	struct sigaction nsa;
	fd_set          master_rfds;
	sigset_t	sigmask, osigmask;

	FUNC2(&master_rfds);
	FUNC1(apmctl_fd, &master_rfds);
	fdmax = apmctl_fd > fdmax ? apmctl_fd : fdmax;

	FUNC1(signal_fd[0], &master_rfds);
	fdmax = signal_fd[0] > fdmax ? signal_fd[0] : fdmax;

	FUNC6(&nsa, 0, sizeof nsa);
	nsa.sa_handler = enque_signal;
	FUNC13(&nsa.sa_mask);
	nsa.sa_flags = SA_RESTART;
	FUNC10(SIGHUP, &nsa, NULL);
	FUNC10(SIGCHLD, &nsa, NULL);
	FUNC10(SIGTERM, &nsa, NULL);

	FUNC12(&sigmask);
	FUNC11(&sigmask, SIGHUP);
	FUNC11(&sigmask, SIGCHLD);
	FUNC11(&sigmask, SIGTERM);
	FUNC14(SIG_SETMASK, &sigmask, &osigmask);

	while (1) {
		fd_set rfds;
		int res;
		struct timeval to;

		to.tv_sec = BATT_CHK_INTV;
		to.tv_usec = 0;

		FUNC5(&rfds, &master_rfds, sizeof rfds);
		FUNC14(SIG_SETMASK, &osigmask, NULL);
		if ((res=FUNC9(fdmax + 1, &rfds, 0, 0, &to)) < 0) {
			if (errno != EINTR)
				FUNC4(1, "select");
		}
		FUNC14(SIG_SETMASK, &sigmask, NULL);

		if (res == 0) { /* time to check the battery */
			FUNC3();
			continue;
		}

		if (FUNC0(signal_fd[0], &rfds)) {
			if (FUNC8(signal_fd[0]) < 0)
				return;
		}

		if (FUNC0(apmctl_fd, &rfds))
			FUNC7(apmctl_fd);
	}
}