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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  wait_status ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(void)
{
	int pid;

	switch (pid = FUNC5()) {
	case -1:
		FUNC8("fork");
		return (1);
	case 0:
		FUNC3();
		FUNC2(1);
	}
	FUNC6("Okie dokie");
	(void)FUNC4(stdout);
	FUNC7(pid);
	if (FUNC1(wait_status) && FUNC0(wait_status))
		FUNC6(" -- Core dumped.\n");
	else
		FUNC6(" -- Can't dump core.\n");
	return (0);
}