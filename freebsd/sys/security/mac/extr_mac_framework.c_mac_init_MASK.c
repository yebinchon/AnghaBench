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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int RM_NOWITNESS ; 
 int RM_RECURSE ; 
 int /*<<< orphan*/  SX_NOWITNESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  mac_policy_list ; 
 int /*<<< orphan*/  mac_policy_rm ; 
 int /*<<< orphan*/  mac_policy_sx ; 
 int /*<<< orphan*/  mac_static_policy_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{

	FUNC0(&mac_static_policy_list);
	FUNC0(&mac_policy_list);
	FUNC1();

#ifndef MAC_STATIC
	FUNC2(&mac_policy_rm, "mac_policy_rm", RM_NOWITNESS |
	    RM_RECURSE);
	FUNC3(&mac_policy_sx, "mac_policy_sx", SX_NOWITNESS);
#endif
}