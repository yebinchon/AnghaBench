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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PQI_CTRL_KERNEL_UP_AND_RUNNING ; 
 int PQI_STATUS_SUCCESS ; 
 int PQI_STATUS_TIMEOUT ; 
 int /*<<< orphan*/  SIS_STATUS_OK_TIMEOUT ; 

int FUNC5(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;
	uint32_t timeout = SIS_STATUS_OK_TIMEOUT;

	FUNC2("IN\n");

	FUNC4(1000000);
	FUNC0((FUNC3(softs) &
		PQI_CTRL_KERNEL_UP_AND_RUNNING), timeout);
	if (!timeout) {
		FUNC1("FW check status timedout\n");
		ret = PQI_STATUS_TIMEOUT;
	}

	FUNC2("OUT\n");
	return ret;
}