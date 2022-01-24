#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ fd; } ;

/* Variables and functions */
 int crack_pid ; 
 int /*<<< orphan*/  crack_start ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ thresh_incr ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  wep_thresh ; 
 TYPE_1__ weplog ; 

void FUNC9() {
	if (crack_pid) {
		FUNC7("\n");
		FUNC8("Warning... previous crack still running!\n");
		FUNC6();
	}	

	if (weplog.fd) {
		if (FUNC4(weplog.fd) == -1)
			FUNC1(1, "fsync");
	}

	crack_pid = FUNC3();

	if (crack_pid == -1)
		FUNC1(1, "fork");

	// child
	if (crack_pid == 0) {
		if (!FUNC0())
			FUNC7("\nCrack unsuccessful\n");
		FUNC2(1);
	} 

	// parent
	FUNC7("\n");
	FUNC8("Starting crack PID=%d\n", crack_pid);
	if (FUNC5(&crack_start, NULL) == -1)
		FUNC1(1, "gettimeofday");

	
	wep_thresh += thresh_incr;
}