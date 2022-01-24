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
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void)
{
	int fd;

	if (FUNC3(FUNC2(), SIGUSR1) == -1)
		FUNC4("Could not signal main process: %m");

	if (FUNC6() == -1)
		FUNC4("setsid() failed");

	fd = FUNC5(_PATH_DEVNULL, O_RDWR, 0);
	if (fd == -1) {
		FUNC4("Could not open %s", _PATH_DEVNULL);
	} else {
		(void)FUNC1(fd, STDIN_FILENO);
		(void)FUNC1(fd, STDOUT_FILENO);
		(void)FUNC1(fd, STDERR_FILENO);
		FUNC0(fd);
	}
}