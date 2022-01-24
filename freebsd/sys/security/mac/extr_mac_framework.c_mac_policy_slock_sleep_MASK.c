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
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mac_late ; 
 int /*<<< orphan*/  mac_policy_sx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(void)
{

	FUNC0(WARN_GIANTOK | WARN_SLEEPOK, NULL,
 	    "mac_policy_slock_sleep");

#ifndef MAC_STATIC
	if (!mac_late)
		return;

	FUNC1(&mac_policy_sx);
#endif
}