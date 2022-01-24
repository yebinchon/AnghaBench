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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(bool block)
{
	pid_t pid;
	int status;
	int num = 0;

	for (;;) {
		/*
		 * If "block" is true, wait for at least one process.
		 */
		if (block && num == 0)
			pid = FUNC5(-1, &status, 0, NULL);
		else
			pid = FUNC5(-1, &status, WNOHANG, NULL);
		if (pid <= 0)
			break;
		if (FUNC1(status)) {
			FUNC4("child process %d terminated with signal %d",
			    pid, FUNC2(status));
		} else if (FUNC0(status) != 0) {
			FUNC3("child process %d terminated with exit status %d",
			    pid, FUNC0(status));
		} else {
			FUNC3("child process %d terminated gracefully", pid);
		}
		num++;
	}

	return (num);
}