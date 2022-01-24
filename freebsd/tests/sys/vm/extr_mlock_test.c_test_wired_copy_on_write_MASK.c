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
typedef  void* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  PT_CONTINUE ; 
 int /*<<< orphan*/  PT_READ_D ; 
 int /*<<< orphan*/  PT_TRACE_ME ; 
 int /*<<< orphan*/  PT_WRITE_D ; 
 scalar_t__ SIGSTOP ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 (void*,size_t) ; 
 scalar_t__ FUNC10 (void*,size_t) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,void*,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(void *addr, size_t len)
{
	int status, val;
	pid_t pid;

	pid = FUNC8();
	if (pid == -1)
		FUNC7("fork() failed: %s", FUNC13(errno));
	if (pid == 0) {
		if (FUNC9(addr, len) != 0)
			FUNC6(1);
		if (FUNC11(PT_TRACE_ME, 0, NULL, 0) != 0)
			FUNC6(2);
		if (FUNC12(SIGSTOP) != 0)
			FUNC6(3);
		if (FUNC10(addr, len) != 0)
			FUNC6(4);
		FUNC6(0);
	}

	FUNC0(FUNC14(pid, &status, 0) == pid);
	FUNC1(!FUNC3(status),
	    "child exited with status %d", FUNC2(status));
	FUNC0(FUNC4(status));
	FUNC0(FUNC5(status) == SIGSTOP);

	errno = 0;
	val = FUNC11(PT_READ_D, pid, addr, 0);
	FUNC0(errno == 0);
	FUNC0(FUNC11(PT_WRITE_D, pid, addr, val) == 0);
	FUNC0(FUNC11(PT_CONTINUE, pid, (caddr_t)1, 0) == 0);
	FUNC0(FUNC14(pid, &status, 0) == pid);
	FUNC0(FUNC3(status));
	FUNC1(FUNC2(status) == 0,
	    "child exited with status %d", FUNC5(status));
}