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
struct timecounter {int tc_flags; int /*<<< orphan*/  tc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_LAST ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timecounter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int TC_FLAGS_SUSPEND_SAFE ; 
 int /*<<< orphan*/  acpi_timer_dev ; 
 int /*<<< orphan*/ * acpi_timer_eh ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  acpi_timer_resume_handler ; 
 struct timecounter acpi_timer_timecounter ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  power_resume ; 
 struct timecounter* timecounter ; 

__attribute__((used)) static void
FUNC5(struct timecounter *newtc)
{
	struct timecounter *tc;

	/* Deregister existing resume event handler. */
	if (acpi_timer_eh != NULL) {
		FUNC0(power_resume, acpi_timer_eh);
		acpi_timer_eh = NULL;
	}

	if ((timecounter->tc_flags & TC_FLAGS_SUSPEND_SAFE) != 0) {
		/*
		 * If we are using a suspend safe timecounter, don't
		 * save/restore it across suspend/resume.
		 */
		return;
	}

	FUNC2(newtc == &acpi_timer_timecounter,
	    ("acpi_timer_suspend_handler: wrong timecounter"));

	tc = timecounter;
	if (tc != newtc) {
		if (bootverbose)
			FUNC4(acpi_timer_dev,
			    "switching timecounter, %s -> %s\n",
			    tc->tc_name, newtc->tc_name);
		(void)FUNC3();
		(void)FUNC3();
		timecounter = newtc;
		acpi_timer_eh = FUNC1(power_resume,
		    acpi_timer_resume_handler, tc, EVENTHANDLER_PRI_LAST);
	}
}