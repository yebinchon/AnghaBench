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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ PSCI_RETVAL_NOT_SUPPORTED ; 
 int /*<<< orphan*/  SMCCC_VERSION ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ smccc_version ; 

__attribute__((used)) static void
FUNC5(void *dummy)
{
	int32_t features;
	uint32_t ret;

	features = FUNC4(SMCCC_VERSION);
	if (features != PSCI_RETVAL_NOT_SUPPORTED) {
		ret = FUNC3(SMCCC_VERSION, 0, 0, 0);
		/* This should always be the case as we checked it above */
		if (ret > 0)
			smccc_version = ret;
	}

	if (bootverbose) {
		FUNC2("Found SMCCC version %u.%u\n",
		    FUNC0(smccc_version),
		    FUNC1(smccc_version));
	}
}