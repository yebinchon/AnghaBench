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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* TEST_PATH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  fdlimit_named_child ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int) ; 

__attribute__((used)) static void
FUNC8(void)
{
	char buffer[64];
	int i, nsems_max, stat;

	nsems_max = 10;
	if (FUNC2(fdlimit_named_child, (void *)(uintptr_t)nsems_max,
	    &stat) < 0)
		return;
	errno = FUNC1(stat);
	switch (FUNC0(stat)) {
	case 0:
		FUNC6();
		break;
	case 1:
		FUNC4("ksem_open");
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

	/* Cleanup any semaphores created by the child. */
	for (i = 0; i < nsems_max + 1; i++) {
		FUNC7(buffer, sizeof(buffer), "%s%d", TEST_PATH, i);
		FUNC5(buffer);
	}
}