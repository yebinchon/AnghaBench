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
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC16 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC17(void)
{
	int fd, pfd, sp[2];
	pid_t pid;

	FUNC12("1..607\n");

	FUNC0((fd = FUNC14(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC5(fd);
	FUNC0(FUNC1(fd) == 0);

	FUNC0((fd = FUNC14(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC6(fd);
	FUNC0(FUNC1(fd) == 0);

	FUNC0((fd = FUNC14(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC7(fd);
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor and operates on it first. */
	FUNC0((fd = FUNC14(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	pid = FUNC4();
	switch (pid) {
	case -1:
		FUNC2(1, "fork() failed");
	case 0:
		FUNC5(fd);
		FUNC0(FUNC1(fd) == 0);
		FUNC3(0);
	default:
		if (FUNC16(pid, NULL, 0) == -1)
			FUNC2(1, "waitpid() failed");
		FUNC5(fd);
	}
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor, but operates on it after parent. */
	FUNC0((fd = FUNC14(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	pid = FUNC4();
	switch (pid) {
	case -1:
		FUNC2(1, "fork() failed");
	case 0:
		FUNC13(1);
		FUNC5(fd);
		FUNC0(FUNC1(fd) == 0);
		FUNC3(0);
	default:
		FUNC5(fd);
		if (FUNC16(pid, NULL, 0) == -1)
			FUNC2(1, "waitpid() failed");
	}
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor and operates on it first. */
	FUNC0((fd = FUNC14(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	pid = FUNC10(&pfd, 0);
	switch (pid) {
	case -1:
		FUNC2(1, "pdfork() failed");
	case 0:
		FUNC6(fd);
		FUNC3(0);
	default:
		if (FUNC11(pfd) == -1)
			FUNC2(1, "pdwait() failed");
		FUNC1(pfd);
		FUNC6(fd);
	}
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor, but operates on it after parent. */
	FUNC0((fd = FUNC14(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	pid = FUNC10(&pfd, 0);
	switch (pid) {
	case -1:
		FUNC2(1, "pdfork() failed");
	case 0:
		FUNC13(1);
		FUNC6(fd);
		FUNC3(0);
	default:
		FUNC6(fd);
		if (FUNC11(pfd) == -1)
			FUNC2(1, "pdwait() failed");
		FUNC1(pfd);
	}
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor and operates on it first. */
	FUNC0((fd = FUNC14(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	pid = FUNC4();
	switch (pid) {
	case -1:
		FUNC2(1, "fork() failed");
	case 0:
		FUNC7(fd);
		FUNC3(0);
	default:
		if (FUNC16(pid, NULL, 0) == -1)
			FUNC2(1, "waitpid() failed");
		FUNC7(fd);
	}
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor, but operates on it after parent. */
	FUNC0((fd = FUNC14(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	pid = FUNC4();
	switch (pid) {
	case -1:
		FUNC2(1, "fork() failed");
	case 0:
		FUNC13(1);
		FUNC7(fd);
		FUNC3(0);
	default:
		FUNC7(fd);
		if (FUNC16(pid, NULL, 0) == -1)
			FUNC2(1, "waitpid() failed");
	}
	FUNC0(FUNC1(fd) == 0);

	/* Send descriptors from parent to child. */
	FUNC0(FUNC15(AF_UNIX, SOCK_STREAM, 0, sp) == 0);
	FUNC0((pid = FUNC4()) >= 0);
	if (pid == 0) {
		FUNC0(FUNC1(sp[0]) == 0);
		FUNC8(sp[1]);
		FUNC0(FUNC1(sp[1]) == 0);
		FUNC3(0);
	} else {
		FUNC0(FUNC1(sp[1]) == 0);
		FUNC9(sp[0]);
		FUNC0(FUNC16(pid, NULL, 0) == pid);
		FUNC0(FUNC1(sp[0]) == 0);
	}

	/* Send descriptors from child to parent. */
	FUNC0(FUNC15(AF_UNIX, SOCK_STREAM, 0, sp) == 0);
	FUNC0((pid = FUNC4()) >= 0);
	if (pid == 0) {
		FUNC0(FUNC1(sp[0]) == 0);
		FUNC9(sp[1]);
		FUNC0(FUNC1(sp[1]) == 0);
		FUNC3(0);
	} else {
		FUNC0(FUNC1(sp[1]) == 0);
		FUNC8(sp[0]);
		FUNC0(FUNC16(pid, NULL, 0) == pid);
		FUNC0(FUNC1(sp[0]) == 0);
	}

	FUNC3(0);
}