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
 int BIG_PIPE_SIZE ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int,char*,int) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 

int
FUNC12(void)
{
	/* any value over PIPE_SIZE should do */
	char buf[BIG_PIPE_SIZE];
	int i, flags, fd[2];

	if (FUNC7(fd) < 0)
		FUNC2(1, "pipe failed");

	flags = FUNC4(fd[1], F_GETFL);
	if (flags == -1 || FUNC4(fd[1], F_SETFL, flags|O_NONBLOCK) == -1) {
		FUNC8("fcntl failed: %s\n", FUNC10(errno));
		FUNC3(1);
	}

	switch (FUNC5()) {
	case -1:
		FUNC1(1, "fork failed: %s\n", FUNC10(errno));
		break;
	case 0:
		FUNC0(fd[1]);
		for (;;) {
			/* Any small size should do */
			i = FUNC9(fd[0], buf, 256);
			if (i == 0)
				break;
			if (i < 0)
				FUNC1(1, "read");
		}
		FUNC3(0);
	default:
		break;
	}

	FUNC0(fd[0]);
	FUNC6(buf, 0, sizeof buf);
	for (i = 0; i < 1000; i++)
		FUNC11(fd[1], buf, sizeof buf);

	FUNC8("ok\n");
	FUNC3(0);
}