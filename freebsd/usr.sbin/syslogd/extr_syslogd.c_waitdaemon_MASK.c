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
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SIGALRM ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timedout ; 
 int FUNC16 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(int maxwait)
{
	int fd;
	int status;
	pid_t pid, childpid;

	switch (childpid = FUNC11()) {
	case -1:
		return (-1);
	case 0:
		break;
	default:
		FUNC15(SIGALRM, timedout);
		FUNC5(maxwait);
		while ((pid = FUNC16(&status, 0, NULL)) != -1) {
			if (FUNC2(status))
				FUNC9(1, "child pid %d exited with return code %d",
					pid, FUNC1(status));
			if (FUNC3(status))
				FUNC9(1, "child pid %d exited on signal %d%s",
					pid, FUNC4(status),
					FUNC0(status) ? " (core dumped)" :
					"");
			if (pid == childpid)	/* it's gone... */
				break;
		}
		FUNC10(0);
	}

	if (FUNC14() == -1)
		return (-1);

	(void)FUNC6("/");
	if ((fd = FUNC13(_PATH_DEVNULL, O_RDWR, 0)) != -1) {
		(void)FUNC8(fd, STDIN_FILENO);
		(void)FUNC8(fd, STDOUT_FILENO);
		(void)FUNC8(fd, STDERR_FILENO);
		if (fd > STDERR_FILENO)
			(void)FUNC7(fd);
	}
	return (FUNC12());
}