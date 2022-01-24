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
struct trussinfo {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PT_TRACE_ME ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct trussinfo*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(struct trussinfo *info, char *command[])
{
	pid_t pid;

	pid = FUNC4();
	if (pid == -1)
		FUNC0(1, "fork failed");
	if (pid == 0) {	/* Child */
		FUNC3(PT_TRACE_ME, 0, 0, 0);
		FUNC1(command[0], command);
		FUNC0(1, "execvp %s", command[0]);
	}

	/* Only in the parent here */
	if (FUNC5(pid, NULL, 0) < 0)
		FUNC0(1, "unexpect stop in waitpid");

	FUNC2(info, pid, 0);
}