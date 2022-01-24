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
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ crack_pid ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

void FUNC6() {
	if (crack_pid == 0)
		return;

	FUNC4("\n");
	FUNC5("Stopping crack PID=%d\n", crack_pid);

	// XXX doesn't return -1 for some reason! [maybe on my box... so it
	// might be buggy on other boxes...]
	if (FUNC2(crack_pid, SIGINT) == -1) {
		FUNC3("kill()");
		FUNC1(1);
	}

	crack_pid = 0;

	FUNC0();
}