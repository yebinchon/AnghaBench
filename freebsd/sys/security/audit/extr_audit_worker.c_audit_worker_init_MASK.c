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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  RFHIGHPID ; 
 int /*<<< orphan*/  audit_thread ; 
 int /*<<< orphan*/  audit_worker ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void
FUNC3(void)
{
	int error;

	FUNC0();
	error = FUNC1(audit_worker, NULL, &audit_thread, RFHIGHPID,
	    0, "audit");
	if (error)
		FUNC2("audit_worker_init: kproc_create returned %d", error);
}