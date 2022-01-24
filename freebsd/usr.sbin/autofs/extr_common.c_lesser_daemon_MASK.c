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
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	int error, fd;

	error = FUNC0("/");
	if (error != 0)
		FUNC3("chdir");

	fd = FUNC4(_PATH_DEVNULL, O_RDWR, 0);
	if (fd < 0) {
		FUNC3("cannot open %s", _PATH_DEVNULL);
		return;
	}

	error = FUNC2(fd, STDIN_FILENO);
	if (error != 0)
		FUNC3("dup2");

	error = FUNC1(fd);
	if (error != 0) {
		/* Bloody hell. */
		FUNC3("close");
	}
}