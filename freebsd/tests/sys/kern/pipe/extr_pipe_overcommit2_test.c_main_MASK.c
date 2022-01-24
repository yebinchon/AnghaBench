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
 scalar_t__ EMFILE ; 
 scalar_t__ ENFILE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 unsigned int FUNC4 (int*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(void)
{
	char template[] = "pipe.XXXXXXXXXX";
	int lastfd, pipes[10000], returnval;
	unsigned int i;

	lastfd = -1;

	if (FUNC3(template) == -1)
		FUNC1(1, "mkstemp failed");

	for (i = 0; i < FUNC4(pipes); i++) {
		returnval = FUNC5(template, O_RDONLY);
		if (returnval == -1 && (errno == ENFILE || errno == EMFILE))
			break; /* All descriptors exhausted. */
		else
			lastfd = returnval;
	}

	/* First falloc failure case in sys_pipe.c:pipe() */
	for (i = 0; i < 1000; i++) {
		returnval = FUNC6(&pipes[i]);
	}

	/*
	 * Free just one FD so that the second falloc failure
	 * case will occur.
	 */
	FUNC0(lastfd);

	for (i = 0; i < 1000; i++) {
		returnval = FUNC6(&pipes[i]);
	}
	FUNC7("PASS\n");

	FUNC8(template);

	FUNC2(0);
}