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
 char* MAP_FAILED ; 
 int MAP_FILE ; 
 int MAP_SHARED ; 
 int MS_INVALIDATE ; 
 int MS_SYNC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  fd ; 
 scalar_t__ file_size ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ simulatedopcount ; 
 scalar_t__ testcalls ; 

void
FUNC6(void)
{
	char *p;

	if (file_size == 0)
		return;
	if (testcalls <= simulatedopcount)
		return;
	if (debug)
		FUNC3("%lu msync(MS_INVALIDATE)\n", testcalls);

	if ((p = (char *)FUNC0(0, file_size, PROT_READ | PROT_WRITE,
			      MAP_FILE | MAP_SHARED, fd, 0)) == MAP_FAILED) {
		FUNC4("doinvl: mmap");
		FUNC5(205);
	}

	if (FUNC1(p, 0, MS_SYNC | MS_INVALIDATE) != 0) {
		FUNC4("doinvl: msync");
		FUNC5(206);
	}

	if (FUNC2(p, file_size) != 0) {
		FUNC4("doinvl: munmap");
		FUNC5(207);
	}
}