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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

int
FUNC8(int argc, char *argv[])
{
	pid_t child_pid, parent_pid;

	if (FUNC4(SIGCHLD, SIG_IGN) == SIG_ERR)
		FUNC0(-1, "signal");

	parent_pid = FUNC2();
	child_pid = FUNC1();
	if (child_pid < 0)
		FUNC0(-1, "fork");
	if (child_pid == 0) {
		child_pid = FUNC2();
		FUNC7(parent_pid);
		return (0);
	} else
		FUNC6(child_pid, 0);
	(void)FUNC3(child_pid, SIGTERM);

	FUNC5(5);

	parent_pid = FUNC2();
	child_pid = FUNC1();
	if (child_pid < 0)
		FUNC0(-1, "fork");
	if (child_pid == 0) {
		child_pid = FUNC2();
		FUNC7(parent_pid);
		return (0);
	} else
		FUNC6(child_pid, 1);
	(void)FUNC3(child_pid, SIGTERM);

	return (0);
}