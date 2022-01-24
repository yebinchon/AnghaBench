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
struct test {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(int asroot, int injail, struct test *test)
{
	int error;

	error = FUNC1(PRIO_PROCESS, 0, -1);
	if (asroot && injail)
		FUNC0("priv_sched_setpriority_curproc(asroot, injail)",
		    error, -1, EACCES);
	if (asroot && !injail)
		FUNC0("priv_sched_setpriority_curproc(asroot, !injail)",
		    error, 0, 0);
	if (!asroot && injail)
		FUNC0("priv_sched_setpriority_curproc(!asroot, injail)",
		    error, -1, EACCES);
	if (!asroot && !injail)
		FUNC0("priv_sched_setpriority_curproc(!asroot, !injail)",
		    error, -1, EACCES);
}