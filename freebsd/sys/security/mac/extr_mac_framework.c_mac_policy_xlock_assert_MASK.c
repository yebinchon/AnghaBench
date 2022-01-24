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
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  mac_late ; 
 int /*<<< orphan*/  mac_policy_sx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void)
{

#ifndef MAC_STATIC
	if (!mac_late)
		return;

	/* XXXRW: rm_assert(&mac_policy_rm, RA_WLOCKED); */
	FUNC0(&mac_policy_sx, SA_XLOCKED);
#endif
}