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
typedef  scalar_t__ time_t ;
struct stat {scalar_t__ st_birthtime; scalar_t__ st_atime; scalar_t__ st_ctime; scalar_t__ st_mtime; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EBADF ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FAILED ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int PASSED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,struct stat*) ; 
 scalar_t__ FUNC9 (int*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC13(void)
{
	struct stat stat;
	int success = PASSED;
	int pd, error;
	pid_t pid;
	time_t now;

	//cap_enter();

	pid = FUNC9(&pd, 0);
	if (pid < 0)
		FUNC6(-1, "pdfork");

	else if (pid == 0) {
		/*
		 * Child process.
		 *
		 * pd should not be a valid process descriptor.
		 */
		error = FUNC10(pd, &pid);
		if (error != -1)
			FUNC2("pdgetpid succeeded");
		else if (errno != EBADF)
			FUNC1("pdgetpid failed, but errno != EBADF");

		FUNC7(success);
	}

	/* Parent process. Ensure that [acm]times have been set correctly. */
	FUNC3(FUNC8(pd, &stat));

	now = FUNC11(NULL);
	FUNC0(now != (time_t)-1);

	FUNC0(now >= stat.st_birthtime);
	FUNC0((now - stat.st_birthtime) < 2);
	FUNC0(stat.st_birthtime == stat.st_atime);
	FUNC0(stat.st_atime == stat.st_ctime);
	FUNC0(stat.st_ctime == stat.st_mtime);

	/* Wait for the child to finish. */
	error = FUNC10(pd, &pid);
	FUNC0(error == 0);
	FUNC0(pid > 0);

	int status;
	while (FUNC12(pid, &status, 0) != pid) {}
	if ((success == PASSED) && FUNC5(status))
		success = FUNC4(status);
	else
		success = FAILED;

	return (success);
}