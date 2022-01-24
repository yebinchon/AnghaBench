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
 int /*<<< orphan*/  A_CONTINUE ; 
 int /*<<< orphan*/  A_PANIC ; 
 int /*<<< orphan*/  A_REBOOT ; 
 int /*<<< orphan*/  A_RETRY ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  root_mount_onfail ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(char **conf)
{
	char *action;
	int error;

	error = FUNC1(conf, &action);
	if (error)
		return (error);

	if (!FUNC3(action, "continue"))
		root_mount_onfail = A_CONTINUE;
	else if (!FUNC3(action, "panic"))
		root_mount_onfail = A_PANIC;
	else if (!FUNC3(action, "reboot"))
		root_mount_onfail = A_REBOOT;
	else if (!FUNC3(action, "retry"))
		root_mount_onfail = A_RETRY;
	else {
		FUNC2("rootmount: %s: unknown action\n", action);
		error = EINVAL;
	}

	FUNC0(action, M_TEMP);
	return (0);
}