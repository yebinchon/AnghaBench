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
struct test {char* t_name; int /*<<< orphan*/  (* t_run ) () ;} ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int FAILED ; 
 int PASSED ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int
FUNC8(int id, struct test *t) {
	int result;

	pid_t pid = FUNC4();
	if (pid < 0)
		FUNC2(-1, "fork");
	if (pid) {
		/* Parent: wait for result from child. */
		int status;
		while (FUNC7(pid, &status, 0) != pid) {}
		if (FUNC1(status))
			result = FUNC0(status);
		else
			result = FAILED;
	} else {
		/* Child process: run the test. */
		FUNC3(t->t_run());
	}

	FUNC5("%s %d - %s\n",
		(result == PASSED) ? "ok" : "not ok",
		id, t->t_name);

	return (result);
}