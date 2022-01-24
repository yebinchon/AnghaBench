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

/* Variables and functions */
 int /*<<< orphan*/  PD_CLOEXEC ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**) ; 
 int FUNC4 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(const char *diffprog, char **diffargv, int fd[])
{
	int pid, pd;

	switch (pid = FUNC4(&pd, PD_CLOEXEC)) {
	case 0:
		FUNC0(fd[0]);
		if (FUNC1(fd[1], STDOUT_FILENO) == -1)
			FUNC2(2, "child could not duplicate descriptor");
		FUNC0(fd[1]);
		FUNC3(diffprog, diffargv);
		FUNC2(2, "could not execute diff: %s", diffprog);
		break;
	case -1:
		FUNC2(2, "could not fork");
		break;
	}
	FUNC0(fd[1]);
	return (pd);
}