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
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC16(void)
{
	int fd, pfd, sp[2];
	pid_t pid;

	FUNC11("1..870\n");

	FUNC0((fd = FUNC13(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC3(fd);
	FUNC0(FUNC1(fd) == 0);

	FUNC0((fd = FUNC13(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC4(fd);
	FUNC0(FUNC1(fd) == 0);

	FUNC0((fd = FUNC13(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC5(fd);
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor and operates on it first. */
	FUNC0((fd = FUNC13(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0((pid = FUNC8()) >= 0);
	if (pid == 0) {
		FUNC3(fd);
		FUNC0(FUNC1(fd) == 0);
		FUNC2(0);
	} else {
		FUNC0(FUNC15(pid, NULL, 0) == pid);
		FUNC3(fd);
	}
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor, but operates on it after parent. */
	FUNC0((fd = FUNC13(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0((pid = FUNC8()) >= 0);
	if (pid == 0) {
		FUNC12(1);
		FUNC3(fd);
		FUNC0(FUNC1(fd) == 0);
		FUNC2(0);
	} else {
		FUNC3(fd);
		FUNC0(FUNC15(pid, NULL, 0) == pid);
	}
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor and operates on it first. */
	FUNC0((fd = FUNC13(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0((pid = FUNC9(&pfd, 0)) >= 0);
	if (pid == 0) {
		FUNC4(fd);
		FUNC2(0);
	} else {
		FUNC0(FUNC10(pfd) == 0);
/*
		It fails with EBADF, which I believe is a bug.
		CHECK(close(pfd) == 0);
*/
		FUNC4(fd);
	}
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor, but operates on it after parent. */
	FUNC0((fd = FUNC13(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0((pid = FUNC9(&pfd, 0)) >= 0);
	if (pid == 0) {
		FUNC12(1);
		FUNC4(fd);
		FUNC2(0);
	} else {
		FUNC4(fd);
		FUNC0(FUNC10(pfd) == 0);
/*
		It fails with EBADF, which I believe is a bug.
		CHECK(close(pfd) == 0);
*/
	}
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor and operates on it first. */
	FUNC0((fd = FUNC13(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0((pid = FUNC8()) >= 0);
	if (pid == 0) {
		FUNC5(fd);
		FUNC2(0);
	} else {
		FUNC0(FUNC15(pid, NULL, 0) == pid);
		FUNC5(fd);
	}
	FUNC0(FUNC1(fd) == 0);

	/* Child inherits descriptor, but operates on it after parent. */
	FUNC0((fd = FUNC13(AF_UNIX, SOCK_STREAM, 0)) >= 0);
	FUNC0((pid = FUNC8()) >= 0);
	if (pid == 0) {
		FUNC12(1);
		FUNC5(fd);
		FUNC2(0);
	} else {
		FUNC5(fd);
		FUNC0(FUNC15(pid, NULL, 0) == pid);
	}
	FUNC0(FUNC1(fd) == 0);

	/* Send descriptors from parent to child. */
	FUNC0(FUNC14(AF_UNIX, SOCK_STREAM, 0, sp) == 0);
	FUNC0((pid = FUNC8()) >= 0);
	if (pid == 0) {
		FUNC0(FUNC1(sp[0]) == 0);
		FUNC6(sp[1]);
		FUNC0(FUNC1(sp[1]) == 0);
		FUNC2(0);
	} else {
		FUNC0(FUNC1(sp[1]) == 0);
		FUNC7(sp[0]);
		FUNC0(FUNC15(pid, NULL, 0) == pid);
		FUNC0(FUNC1(sp[0]) == 0);
	}

	/* Send descriptors from child to parent. */
	FUNC0(FUNC14(AF_UNIX, SOCK_STREAM, 0, sp) == 0);
	FUNC0((pid = FUNC8()) >= 0);
	if (pid == 0) {
		FUNC0(FUNC1(sp[0]) == 0);
		FUNC7(sp[1]);
		FUNC0(FUNC1(sp[1]) == 0);
		FUNC2(0);
	} else {
		FUNC0(FUNC1(sp[1]) == 0);
		FUNC6(sp[0]);
		FUNC0(FUNC15(pid, NULL, 0) == pid);
		FUNC0(FUNC1(sp[0]) == 0);
	}

	FUNC2(0);
}