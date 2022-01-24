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
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_BSHELL ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 
 char* FUNC15 (char const*) ; 

__attribute__((used)) static int
FUNC16(const char *prog, pid_t *rpid)
{
	int pfd[2], nulldesc;
	pid_t pid;
	char *argv[4]; /* sh -c cmd NULL */
	char errmsg[200];

	if (FUNC11(pfd) == -1)
		return (-1);
	if ((nulldesc = FUNC10(_PATH_DEVNULL, O_RDWR)) == -1)
		/* we are royally screwed anyway */
		return (-1);

	switch ((pid = FUNC8())) {
	case -1:
		FUNC2(nulldesc);
		return (-1);

	case 0:
		(void)FUNC12();	/* Avoid catching SIGHUPs. */
		argv[0] = FUNC15("sh");
		argv[1] = FUNC15("-c");
		argv[2] = FUNC15(prog);
		argv[3] = NULL;
		if (argv[0] == NULL || argv[1] == NULL || argv[2] == NULL) {
			FUNC9("strdup");
			FUNC6(1);
		}

		FUNC1(0);

		/* Restore signals marked as SIG_IGN. */
		(void)FUNC13(SIGINT, SIG_DFL);
		(void)FUNC13(SIGQUIT, SIG_DFL);
		(void)FUNC13(SIGPIPE, SIG_DFL);

		FUNC4(pfd[0], STDIN_FILENO);
		FUNC4(nulldesc, STDOUT_FILENO);
		FUNC4(nulldesc, STDERR_FILENO);
		FUNC3(STDERR_FILENO + 1);

		(void)FUNC5(_PATH_BSHELL, argv);
		FUNC0(255);
	}
	FUNC2(nulldesc);
	FUNC2(pfd[0]);
	/*
	 * Avoid blocking on a hung pipe.  With O_NONBLOCK, we are
	 * supposed to get an EWOULDBLOCK on writev(2), which is
	 * caught by the logic above anyway, which will in turn close
	 * the pipe, and fork a new logging subprocess if necessary.
	 * The stale subprocess will be killed some time later unless
	 * it terminated itself due to closing its input pipe (so we
	 * get rid of really dead puppies).
	 */
	if (FUNC7(pfd[1], F_SETFL, O_NONBLOCK) == -1) {
		/* This is bad. */
		(void)FUNC14(errmsg, sizeof errmsg,
			       "Warning: cannot change pipe to PID %d to "
			       "non-blocking behaviour.",
			       (int)pid);
		FUNC9(errmsg);
	}
	*rpid = pid;
	return (pfd[1]);
}