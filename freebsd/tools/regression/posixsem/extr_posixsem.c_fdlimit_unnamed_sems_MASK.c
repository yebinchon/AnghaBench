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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  fdlimit_unnamed_child ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void)
{
	int nsems_max, stat;

	nsems_max = 10;
	if (FUNC2(fdlimit_unnamed_child, (void *)(uintptr_t)nsems_max,
	    &stat))
		return;
	errno = FUNC1(stat);
	switch (FUNC0(stat)) {
	case 0:
		FUNC5();
		break;
	case 1:
		FUNC4("ksem_init");
		break;
	case 2:
		FUNC3("Limit of %d semaphores not enforced", nsems_max);
		break;
	case 3:
		FUNC4("getrlimit");
		break;
	case 4:
		FUNC4("getrlimit");
		break;
	default:
		FUNC3("bad child state %#x", stat);
		break;
	}
}