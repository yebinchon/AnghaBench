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
 int /*<<< orphan*/  mac_late ; 
 int /*<<< orphan*/  mac_policy_rm ; 
 int /*<<< orphan*/  mac_policy_sx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)
{

#ifndef MAC_STATIC
	if (!mac_late)
		return;

	FUNC0(&mac_policy_rm);
	FUNC1(&mac_policy_sx);
#endif
}