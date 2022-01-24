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
 int /*<<< orphan*/  YPXFRD_FREEBSD_PROG ; 
 int /*<<< orphan*/  YPXFRD_FREEBSD_VERS ; 
 int /*<<< orphan*/  children ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(int sig)
{
	int			status;
	int			saved_errno;

	saved_errno = errno;

	if (sig == SIGHUP) {
		FUNC1();
		errno = saved_errno;
		return;
	}

	if (sig == SIGCHLD) {
		while (FUNC3(&status, WNOHANG, NULL) > 0)
			children--;
	} else {
		(void) FUNC2(YPXFRD_FREEBSD_PROG, YPXFRD_FREEBSD_VERS);
		FUNC0(0);
	}

	errno = saved_errno;
	return;
}