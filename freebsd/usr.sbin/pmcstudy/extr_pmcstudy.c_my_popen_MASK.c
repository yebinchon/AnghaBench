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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  environ ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

__attribute__((used)) static FILE *
FUNC9(const char *command, const char *dir, pid_t *p_pid)
{
	FILE *io_out, *io_in;
	int pdesin[2], pdesout[2];
	char *argv[4];
	pid_t pid;
	char cmd[4];
	char cmd2[1024];
	char arg1[4];

	if ((FUNC7(dir, "r") != 0) &&
	    (FUNC7(dir, "w") != 0)) {
		errno = EINVAL;
		return(NULL);
	}
	if (FUNC6(pdesin) < 0)
		return (NULL);

	if (FUNC6(pdesout) < 0) {
		(void)FUNC0(pdesin[0]);
		(void)FUNC0(pdesin[1]);
		return (NULL);
	}
	FUNC8(cmd, "sh");
	FUNC8(arg1, "-c");
	FUNC8(cmd2, command);
	argv[0] = cmd;
	argv[1] = arg1;
	argv[2] = cmd2;
	argv[3] = NULL;

	switch (pid = FUNC5()) {
	case -1:			/* Error. */
		(void)FUNC0(pdesin[0]);
		(void)FUNC0(pdesin[1]);
		(void)FUNC0(pdesout[0]);
		(void)FUNC0(pdesout[1]);
		return (NULL);
		/* NOTREACHED */
	case 0:				/* Child. */
		/* Close out un-used sides */
		(void)FUNC0(pdesin[1]);
		(void)FUNC0(pdesout[0]);
		/* Now prepare the stdin of the process */
		FUNC0(0);
		(void)FUNC1(pdesin[0]);
		(void)FUNC0(pdesin[0]);
		/* Now prepare the stdout of the process */
		FUNC0(1);
		(void)FUNC1(pdesout[1]);
		/* And lets do stderr just in case */
		FUNC0(2);
		(void)FUNC1(pdesout[1]);
		(void)FUNC0(pdesout[1]);
		/* Now run it */
		FUNC2("/bin/sh", argv, environ);
		FUNC3(127);
		/* NOTREACHED */
	}
	/* Parent; assume fdopen can't fail. */
	/* Store the pid */
	*p_pid = pid;
	if (FUNC7(dir, "r") != 0) {
		io_out = FUNC4(pdesin[1], "w");
		(void)FUNC0(pdesin[0]);
		(void)FUNC0(pdesout[0]);
		(void)FUNC0(pdesout[1]);
		return(io_out);
 	} else {
		/* Prepare the input stream */
		io_in = FUNC4(pdesout[0], "r");
		(void)FUNC0(pdesout[1]);
		(void)FUNC0(pdesin[0]);
		(void)FUNC0(pdesin[1]);
		return (io_in);
	}
}