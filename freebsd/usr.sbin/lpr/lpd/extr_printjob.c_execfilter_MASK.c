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
struct printer {int /*<<< orphan*/  printer; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  DORETURN ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct printer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tempstderr ; 
 scalar_t__ FUNC14 (int*) ; 

__attribute__((used)) static int
FUNC15(struct printer *pp, char *f_cmd, char *f_av[], int infd, int outfd)
{
	pid_t fpid, wpid;
	int errfd, retcode, wstatus;
	FILE *errfp;
	char buf[BUFSIZ], *slash;

	fpid = FUNC3(pp, DORETURN);
	if (fpid != 0) {
		/*
		 * This is the parent process, which just waits for the child
		 * to complete and then returns the result.  Note that it is
		 * the child process which reads the input stream.
		 */
		if (fpid < 0)
			retcode = 100;
		else {
			while ((wpid = FUNC14(&wstatus)) > 0 &&
			    wpid != fpid)
				;
			if (wpid < 0) {
				retcode = 100;
				FUNC13(LOG_WARNING,
				    "%s: after execv(%s), wait() returned: %m",
				    pp->printer, f_cmd);
			} else
				retcode = FUNC0(wstatus);
		}

		/*
		 * Copy everything the filter wrote to stderr from our
		 * temporary errors file to the "lf=" logfile.
		 */
		errfp = FUNC9(tempstderr, "r");
		if (errfp) {
			while (FUNC8(buf, sizeof(buf), errfp))
				FUNC10(buf, stderr);
			FUNC7(errfp);
		}

		return (retcode);
	}

	/*
	 * This is the child process, which is the one that executes the
	 * given filter.
	 */
	/*
	 * If the first parameter has any slashes in it, then change it
	 * to point to the first character after the last slash.
	 */
	slash = FUNC12(f_av[0], '/');
	if (slash != NULL)
		f_av[0] = slash + 1;
	/*
	 * XXX - in the future, this should setup an explicit list of
	 *       environment variables and use execve()!
	 */

	/*
	 * Setup stdin, stdout, and stderr as we want them when the filter
	 * is running.  Stderr is setup so it points to a temporary errors
	 * file, and the parent process will copy that temporary file to
	 * the real logfile after the filter completes.
	 */
	FUNC4(infd, STDIN_FILENO);
	FUNC4(outfd, STDOUT_FILENO);
	errfd = FUNC11(tempstderr, O_WRONLY|O_TRUNC, 0664);
	if (errfd >= 0)
		FUNC4(errfd, STDERR_FILENO);
	FUNC2();
	FUNC1(3);
	FUNC5(f_cmd, f_av);
	FUNC13(LOG_ERR, "%s: cannot execv(%s): %m", pp->printer, f_cmd);
	FUNC6(2);
	/* NOTREACHED */
}