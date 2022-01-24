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
 int SIGCHLD ; 
 int SIGHUP ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  children ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(int sig)
{
	int			status;
	int			saved_errno;

	saved_errno = errno;

	if (sig == SIGHUP) {
		FUNC1();
#ifdef DB_CACHE
		yp_flush_all();
#endif
		errno = saved_errno;
		return;
	}

	if (sig == SIGCHLD) {
		while (FUNC3(&status, WNOHANG, NULL) > 0)
			children--;
	} else {
		FUNC2();
		FUNC0(0);
	}
	errno = saved_errno;
	return;
}