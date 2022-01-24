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
 scalar_t__ audit_dtrace_enabled ; 
 int /*<<< orphan*/  audit_mtx ; 
 int audit_syscalls_enabled ; 
 scalar_t__ audit_trail_enabled ; 
 int /*<<< orphan*/  audit_trail_suspended ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(void)
{

	FUNC0(&audit_mtx);
#ifdef KDTRACE_HOOKS
	if (audit_dtrace_enabled)
		audit_syscalls_enabled = true;
	else {
#endif
		if (audit_trail_enabled && !audit_trail_suspended)
			audit_syscalls_enabled = true;
		else
			audit_syscalls_enabled = false;
#ifdef KDTRACE_HOOKS
	}
#endif
	FUNC1(&audit_mtx);
}