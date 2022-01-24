#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_12__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_13__ {int running; scalar_t__ status; int bytes_read; int /*<<< orphan*/  page_data; int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  semaphore; } ;
typedef  TYPE_2__ ocs_mgmt_sfp_result_t ;
typedef  int int32_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENXIO ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,scalar_t__) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ocs_mgmt_sfp_cb ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC11(ocs_t *ocs, uint16_t page, void *buf, uint32_t buf_len)
{
	int rc = 0;
	ocs_mgmt_sfp_result_t *result = FUNC6(ocs, sizeof(ocs_mgmt_sfp_result_t),  OCS_M_ZERO | OCS_M_NOWAIT);;

	FUNC8(&(result->semaphore), 0, "get_sfp");
	FUNC3(ocs, &(result->cb_lock), "get_sfp");

	/* Send the HW command */
	FUNC1(&ocs->hw, page, ocs_mgmt_sfp_cb, result);

	/* Wait for semaphore to be signaled when the command completes */
	if (FUNC9(&(result->semaphore), 5 * 1000 * 1000) != 0) {
		/* Timed out, callback will free memory */
		FUNC2(&(result->cb_lock));
		result->running++;
		if(result->running == 1) {
			FUNC4(ocs, "ocs_sem_p failed\n");
			FUNC10(&(result->cb_lock));
			return (-ENXIO);
		}
		/* sfp_cb() has already executed, proceed as normal */
		FUNC10(&(result->cb_lock));
	}

	/* Check status */
	if (result->status != 0) {
		FUNC5(ocs, "read_transceiver_data returned status %d\n",
			     result->status);
		rc = -EFAULT;
	}

	if (rc == 0) {
		rc = (result->bytes_read > buf_len ? buf_len : result->bytes_read);
		/* Copy the results back to the supplied buffer */
		FUNC7(buf, result->page_data, rc);
	}

	FUNC0(ocs, result, sizeof(ocs_mgmt_sfp_result_t));
	return rc;
}