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
typedef  int /*<<< orphan*/  psci_callfn_t ;

/* Variables and functions */
 scalar_t__ PSCI_RETVAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  psci_callfn ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *dummy)
{
	psci_callfn_t new_callfn;

	if (FUNC1(&new_callfn) != PSCI_RETVAL_SUCCESS) {
		FUNC0("No PSCI/SMCCC call function found\n");
		return;
	}

	psci_callfn = new_callfn;
}