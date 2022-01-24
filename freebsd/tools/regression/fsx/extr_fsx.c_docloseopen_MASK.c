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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ debug ; 
 scalar_t__ fd ; 
 int /*<<< orphan*/  fname ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ simulatedopcount ; 
 scalar_t__ testcalls ; 

void
FUNC5(void)
{ 
	if (testcalls <= simulatedopcount)
		return;

	if (debug)
		FUNC2("%lu close/open\n", testcalls);
	if (FUNC0(fd)) {
		FUNC3("docloseopen: close");
		FUNC4(180);
	}
	fd = FUNC1(fname, O_RDWR, 0);
	if (fd < 0) {
		FUNC3("docloseopen: open");
		FUNC4(181);
	}
}