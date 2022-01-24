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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atexit_temp_dir ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  temp_dir ; 

int
FUNC9(void)
{
	int i;

	if (FUNC6() != 0)
		FUNC3(-1, "must be run as root");

	FUNC8(temp_dir, "fifo_create.XXXXXXXXXXX");
	if (FUNC7(temp_dir) == NULL)
		FUNC2(-1, "mkdtemp");
	FUNC0(atexit_temp_dir);

	if (FUNC1(temp_dir) < 0)
		FUNC2(-1, "chdir");

	/*
	 * Run each test twice, once with mknod(2) and a second time with
	 * mkfifo(2).  Historically, BSD has not allowed mknod(2) to be used
	 * to create fifos, but the Single UNIX Specification requires it.
	 */
	for (i = 0; i < 2; i++) {
		FUNC4(i);
		FUNC5(i);
	}

	return (0);
}