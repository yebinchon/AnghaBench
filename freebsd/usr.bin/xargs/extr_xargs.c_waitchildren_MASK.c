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
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ ECHILD ; 
 scalar_t__ ENOENT ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ childerr ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 int rval ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,...) ; 
 int FUNC8 (int,int*) ; 

__attribute__((used)) static void
FUNC9(const char *name, int waitall)
{
	pid_t pid;
	int status;
	int cause_exit = 0;

	while ((pid = FUNC8(waitall || FUNC5(), &status)) > 0) {
		/*
		 * If we couldn't invoke the utility or if utility exited
		 * because of a signal or with a value of 255, warn (per
		 * POSIX), and then wait until all other children have
		 * exited before exiting 1-125. POSIX requires us to stop
		 * reading if child exits because of a signal or with 255,
		 * but it does not require us to exit immediately; waiting
		 * is preferable to orphaning.
		 */
		if (childerr != 0 && cause_exit == 0) {
			errno = childerr;
			waitall = 1;
			cause_exit = ENOENT ? 127 : 126;
			FUNC6("%s", name);
		} else if (FUNC1(status)) {
			waitall = cause_exit = 1;
			FUNC7("%s: terminated with signal %d; aborting",
			    name, FUNC2(status));
		} else if (FUNC0(status) == 255) {
			waitall = cause_exit = 1;
			FUNC7("%s: exited with status 255; aborting", name);
		} else if (FUNC0(status))
 			rval = 1;
	}

 	if (cause_exit)
		FUNC4(cause_exit);
	if (pid == -1 && errno != ECHILD)
		FUNC3(1, "waitpid");
}