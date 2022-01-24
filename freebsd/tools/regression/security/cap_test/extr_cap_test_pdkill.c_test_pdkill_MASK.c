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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FAILED ; 
 int PASSED ; 
 int /*<<< orphan*/  SIGINT ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  handle_signal ; 
 int FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,scalar_t__*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC12(void)
{
	int success = PASSED;
	int pd, error;
	pid_t pid;

	//cap_enter();

	error = FUNC5(&pd, 0);
	if (error < 0)
		FUNC3(-1, "pdfork");

	else if (error == 0) {
		FUNC8(SIGINT, handle_signal);
		FUNC9(3600);
		FUNC4(FAILED);
	}

	/* Parent process; find the child's PID (we'll need it later). */
	error = FUNC6(pd, &pid);
	if (error != 0)
		FUNC0("pdgetpid");

	/* Kill the child! */
	FUNC10(100);
	error = FUNC7(pd, SIGINT);
	if (error != 0)
		FUNC0("pdkill");

	/* Make sure the child finished properly. */
	int status;
	while (FUNC11(pid, &status, 0) != pid) {}
	if ((success == PASSED) && FUNC2(status))
		success = FUNC1(status);
	else
		success = FAILED;

	return (success);
}