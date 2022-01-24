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
typedef  int /*<<< orphan*/  cstat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int,int*,int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int*,int) ; 

__attribute__((used)) static int
FUNC8(int (*func)(void *arg), void *arg, int *stat)
{
	pid_t pid;
	int pfd[2], cstat;

	if (FUNC4(pfd) < 0) {
		FUNC2("pipe");
		return (-1);
	}

	pid = FUNC3();
	switch (pid) {
	case -1:
		/* Error. */
		FUNC2("fork");
		FUNC0(pfd[0]);
		FUNC0(pfd[1]);
		return (-1);
	case 0:
		/* Child. */
		cstat = func(arg);
		FUNC7(pfd[1], &cstat, sizeof(cstat));
		FUNC1(0);
	}

	if (FUNC5(pfd[0], stat, sizeof(*stat)) < 0) {
		FUNC2("read(pipe)");
		FUNC0(pfd[0]);
		FUNC0(pfd[1]);
		return (-1);
	}
	if (FUNC6(pid, NULL, 0) < 0) {
		FUNC2("wait");
		FUNC0(pfd[0]);
		FUNC0(pfd[1]);
		return (-1);
	}
	FUNC0(pfd[0]);
	FUNC0(pfd[1]);
	return (0);
}