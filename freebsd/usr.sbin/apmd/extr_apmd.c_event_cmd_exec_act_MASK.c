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
struct event_cmd_exec {int /*<<< orphan*/  line; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(void *this)
{
	struct event_cmd_exec * p = this;
	int status = -1;
	pid_t pid;

	switch ((pid = FUNC2())) {
	case -1:
		FUNC5("cannot fork");
		break;
	case 0:
		/* child process */
		FUNC3(SIGHUP, SIG_DFL);
		FUNC3(SIGCHLD, SIG_DFL);
		FUNC3(SIGTERM, SIG_DFL);
		FUNC1(_PATH_BSHELL, "sh", "-c", p->line, (char *)NULL);
		FUNC0(127);
	default:
		/* parent process */
		do {
			pid = FUNC4(pid, &status, 0);
		} while (pid == -1 && errno == EINTR);
		break;
	}
	return status;
}