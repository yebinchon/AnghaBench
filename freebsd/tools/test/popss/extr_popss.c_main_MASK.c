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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * stk ; 
 int /*<<< orphan*/ * tmpstk ; 

int
FUNC7(int argc, char *argv[])
{
	int child;

	if (argc != 2) {
		FUNC5(
	    "Usage: popss [bound|int1|int3|into|int80|syscall|sysenter]\n");
		FUNC2(1);
	}
	stk = &tmpstk[FUNC4(tmpstk) - 1];
	child = FUNC3();
	if (child == -1)
		FUNC1(1, "fork");
	if (child == 0)
		FUNC0(argv[1]);
	else
		FUNC6(child);
}