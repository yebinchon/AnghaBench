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
typedef  int /*<<< orphan*/  nsems_max ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  exhaust_unnamed_child ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{
	size_t len;
	int nsems_max, stat;

	len = sizeof(nsems_max);
	if (FUNC6("p1003_1b.sem_nsems_max", &nsems_max, &len, NULL, 0) <
	    0) {
		FUNC4("sysctl(p1003_1b.sem_nsems_max)");
		return;
	}

	if (FUNC2(exhaust_unnamed_child, (void *)(uintptr_t)nsems_max,
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
	default:
		FUNC3("bad child state %#x", stat);
		break;
	}
}