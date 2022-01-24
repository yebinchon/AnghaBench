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
 int MCL_CURRENT ; 
 int MCL_FUTURE ; 
 int /*<<< orphan*/  _SC_MEMLOCK ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int argc, char *argv[])
{
	int e = 0;

	/* Is memory locking configured?
	 */
	errno = 0;
	if (FUNC5(_SC_MEMLOCK) == -1) {
		if (errno != 0) {
			/* This isn't valid - may be a standard violation
			 */
			FUNC4("(should not happen) sysconf(_SC_MEMLOCK)");
		}
		else {
			FUNC0(stderr,
			"Memory locking is not supported in this environment.\n");
			e = -1;
		}
	}

	/* Lock yourself in memory:
	 */
	if (FUNC1(MCL_CURRENT | MCL_FUTURE) == -1) {
		FUNC3("mlockall(MCL_CURRENT | MCL_FUTURE)");
		e = errno;
	}
	else if (FUNC2() == -1) {
		FUNC3("munlockall");
		e = errno;
	}

	return e;
}