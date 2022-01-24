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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  environ ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int*) ; 
 int FUNC6 () ; 

__attribute__((used)) static void
FUNC7(char *command, FILE **iop)
{
	char *argv[4];
	int pdes[4];
	int pid;

	if (FUNC5(pdes) < 0)
		goto error;

	if (FUNC5(pdes + 2) < 0) {
		FUNC0(pdes[0]);
		FUNC0(pdes[1]);
		goto error;
	}
	argv[0] = "sh";
	argv[1] = "-c";
	argv[2] = command;
	argv[3] = NULL;

	switch ((pid = FUNC6())) {
	case -1:			/* Error. */
		FUNC0(pdes[0]);
		FUNC0(pdes[1]);
		FUNC0(pdes[2]);
		FUNC0(pdes[3]);
		goto error;
	case 0:			/* Child. */
		FUNC1(pdes[1], STDOUT_FILENO);
		FUNC1(pdes[2], STDIN_FILENO);
		FUNC0(pdes[0]);
		FUNC0(pdes[3]);
		FUNC2("/bin/sh", argv, environ);
		FUNC3(127);
	default:
		break;
	}
	iop[0] = FUNC4(pdes[3], "w");
	iop[1] = FUNC4(pdes[0], "r");
	FUNC0(pdes[1]);
	FUNC0(pdes[2]);
	return;
error:
	iop[0] = iop[1] = NULL;
}