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
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  PROCESS_QUERY_INFORMATION ; 
 int /*<<< orphan*/  PROCESS_TERMINATE ; 
 int SIGTERM ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 

int FUNC5(pid_t pid, int sig)
{
	if (pid > 0 && sig == SIGTERM) {
		HANDLE h = FUNC2(PROCESS_TERMINATE, FALSE, pid);

		if (FUNC3(h, -1)) {
			FUNC0(h);
			return 0;
		}

		errno = FUNC4(FUNC1());
		FUNC0(h);
		return -1;
	} else if (pid > 0 && sig == 0) {
		HANDLE h = FUNC2(PROCESS_QUERY_INFORMATION, FALSE, pid);
		if (h) {
			FUNC0(h);
			return 0;
		}
	}

	errno = EINVAL;
	return -1;
}