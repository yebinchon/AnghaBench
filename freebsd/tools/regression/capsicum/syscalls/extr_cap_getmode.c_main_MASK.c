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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EFAULT ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC12(void)
{
	unsigned int mode;
	pid_t pid;
	int pfd;

	FUNC9("1..27\n");

	mode = 666;
	FUNC0(FUNC2(&mode) == 0);
	/* If cap_getmode() succeeded mode should be modified. */
	FUNC0(mode != 666);
	/* We are not in capability mode. */
	FUNC0(mode == 0);

	/* Expect EFAULT. */
	errno = 0;
	FUNC0(FUNC2(NULL) == -1);
	FUNC0(errno == EFAULT);
	errno = 0;
	FUNC0(FUNC2((void *)(uintptr_t)0xdeadc0de) == -1);
	FUNC0(errno == EFAULT);

	/* If parent is not in capability mode, child after fork() also won't be. */
	pid = FUNC6();
	switch (pid) {
	case -1:
		FUNC4(1, "fork() failed");
	case 0:
		mode = 666;
		FUNC0(FUNC2(&mode) == 0);
		/* If cap_getmode() succeeded mode should be modified. */
		FUNC0(mode != 666);
		/* We are not in capability mode. */
		FUNC0(mode == 0);
		FUNC5(0);
	default:
		if (FUNC11(pid, NULL, 0) == -1)
			FUNC4(1, "waitpid() failed");
	}

	/* If parent is not in capability mode, child after pdfork() also won't be. */
	pid = FUNC7(&pfd, 0);
	switch (pid) {
	case -1:
		FUNC4(1, "pdfork() failed");
	case 0:
		mode = 666;
		FUNC0(FUNC2(&mode) == 0);
		/* If cap_getmode() succeeded mode should be modified. */
		FUNC0(mode != 666);
		/* We are not in capability mode. */
		FUNC0(mode == 0);
		FUNC5(0);
	default:
		if (FUNC8(pfd) == -1)
			FUNC4(1, "pdwait() failed");
		FUNC3(pfd);
	}

	/* In capability mode... */

	FUNC0(FUNC1() == 0);

	mode = 666;
	FUNC0(FUNC2(&mode) == 0);
	/* If cap_getmode() succeeded mode should be modified. */
	FUNC0(mode != 666);
	/* We are in capability mode. */
	FUNC0(mode == 1);

	/* Expect EFAULT. */
	errno = 0;
	FUNC0(FUNC2(NULL) == -1);
	FUNC0(errno == EFAULT);
	errno = 0;
	FUNC0(FUNC2((void *)(uintptr_t)0xdeadc0de) == -1);
	FUNC0(errno == EFAULT);

	/* If parent is in capability mode, child after fork() also will be. */
	pid = FUNC6();
	switch (pid) {
	case -1:
		FUNC4(1, "fork() failed");
	case 0:
		mode = 666;
		FUNC0(FUNC2(&mode) == 0);
		/* If cap_getmode() succeeded mode should be modified. */
		FUNC0(mode != 666);
		/* We are in capability mode. */
		FUNC0(mode == 1);
		FUNC5(0);
	default:
		/*
		 * wait(2) and friends are not permitted in the capability mode,
		 * so we can only just wait for a while.
		 */
		FUNC10(1);
	}

	/* If parent is in capability mode, child after pdfork() also will be. */
	pid = FUNC7(&pfd, 0);
	switch (pid) {
	case -1:
		FUNC4(1, "pdfork() failed");
	case 0:
		mode = 666;
		FUNC0(FUNC2(&mode) == 0);
		/* If cap_getmode() succeeded mode should be modified. */
		FUNC0(mode != 666);
		/* We are in capability mode. */
		FUNC0(mode == 1);
		FUNC5(0);
	default:
		if (FUNC8(pfd) == -1)
			FUNC4(1, "pdwait() failed");
		FUNC3(pfd);
	}

	FUNC5(0);
}