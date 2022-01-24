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
 scalar_t__ EBADF ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ listen_fd ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	int pid;

	pid = FUNC3();
	if (pid < 0)
		FUNC0(1, "fork");
	if (pid > 0) {
		FUNC5(pid, NULL, 0);
		FUNC2(0);
	}

	/*
	 * We will call ftruncate(2) on the next available file descriptor,
	 * listen_fd+1, and get back EBADF if it's not a valid descriptor,
	 * and EINVAL if it is.  This (currently) works fine in practice.
	 */
	if (FUNC4(listen_fd + 1, 0) < 0) {
		if (errno == EBADF)
			FUNC2(0);
		else if (errno == EINVAL)
			FUNC1(1, "file descriptor still open in child");
		else
			FUNC0(1, "unexpected error");
	} else
		FUNC1(1, "ftruncate succeeded");
}