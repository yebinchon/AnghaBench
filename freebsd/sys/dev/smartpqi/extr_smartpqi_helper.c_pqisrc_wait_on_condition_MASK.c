#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int req_pending; } ;
typedef  TYPE_1__ rcb_t ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ PQISRC_CMD_TIMEOUT_CNT ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int PQI_STATUS_TIMEOUT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(pqisrc_softstate_t *softs, rcb_t *rcb){

	FUNC1("IN\n");

	int ret = PQI_STATUS_SUCCESS;
	uint32_t loop_cnt = 0;
	
	while (rcb->req_pending == true) {
		FUNC3(500); /* Micro sec */

		/*Polling needed for FreeBSD : since ithread routine is not scheduled
                during bootup, we could use polling until interrupts are
                enabled (using 'if (cold)'to check for the boot time before
                interrupts are enabled). */
		FUNC2(softs);

		if (loop_cnt++ == PQISRC_CMD_TIMEOUT_CNT) {
			FUNC0("ERR: Requested cmd timed out !!!\n");
			ret = PQI_STATUS_TIMEOUT;
			break;
		}
	
		if (FUNC4(softs)) {
			FUNC0("Controller is Offline");
			ret = PQI_STATUS_FAILURE;
			break;
		}

	}
	rcb->req_pending = true;

	FUNC1("OUT\n");

	return ret;
}