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
struct sigaction {int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGSTOP ; 
 scalar_t__ cont_received ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ exit_received ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  job_handler ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ stop_received ; 

void
FUNC10(void)
{
	struct sigaction sa;
	pid_t pid;
	int count = 10;

	FUNC8(&sa.sa_mask);
	sa.sa_flags = SA_SIGINFO;
	sa.sa_sigaction = job_handler;
	FUNC7(SIGCHLD, &sa, NULL);
	stop_received = 0;
	cont_received = 0;
	exit_received = 0;
	FUNC2(stdout);
	pid = FUNC3();
	if (pid == 0) {
		FUNC6("child %d\n", FUNC4());
		FUNC5(FUNC4(), SIGSTOP);
		FUNC9(2);
		FUNC1(1);
	}

	while (!(cont_received && stop_received && exit_received)) {
		FUNC9(1);
		if (--count == 0)
			break;
	}
	if (!(cont_received && stop_received && exit_received))
		FUNC0(1, "job signals lost");

	FUNC6("job control test OK.\n");
}