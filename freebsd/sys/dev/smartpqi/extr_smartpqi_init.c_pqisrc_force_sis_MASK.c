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
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;

/* Variables and functions */
 scalar_t__ CTRL_SIS_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;

	if (FUNC3(softs)) {
		FUNC0("Controller FW is not runnning");
		return PQI_STATUS_FAILURE;
	}

	if (FUNC1(softs) == CTRL_SIS_MODE) {
		return ret;
	}

	if (FUNC4(softs)) {
		FUNC2(softs, CTRL_SIS_MODE);
		return ret;
	}
	/* Disable interrupts ? */
	FUNC7(softs);

	/* reset pqi, this will delete queues */
	ret = FUNC5(softs);
	if (ret) {
		return ret;
	}	
	/* Re enable SIS */
	ret = FUNC6(softs);
	if (ret) {
		return ret;
	}

	FUNC2(softs, CTRL_SIS_MODE);

	return ret;	
}