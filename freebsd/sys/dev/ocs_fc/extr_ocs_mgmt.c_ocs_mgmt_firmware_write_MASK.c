#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  status_str ;
struct TYPE_13__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_14__ {scalar_t__ actual_xfer; scalar_t__ status; scalar_t__ change_status; int /*<<< orphan*/  semaphore; } ;
typedef  TYPE_2__ ocs_mgmt_fw_write_result_t ;
struct TYPE_15__ {int /*<<< orphan*/  virt; } ;
typedef  TYPE_3__ ocs_dma_t ;
typedef  int int32_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FW_WRITE_BUFSIZE ; 
 int /*<<< orphan*/  OCS_SEM_FOREVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (void*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ocs_mgmt_fw_write_cb ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,char*,scalar_t__) ; 

__attribute__((used)) static int32_t
FUNC11(ocs_t *ocs, char *name, void *buf, uint32_t buf_len, void *arg_out, uint32_t arg_out_length)
{
	int rc = 0;
	uint32_t bytes_left;
	uint32_t xfer_size;
	uint32_t offset;
	uint8_t *userp;
	ocs_dma_t dma;
	int last = 0;
	ocs_mgmt_fw_write_result_t result;
	uint32_t change_status = 0;
        char status_str[80];

	FUNC8(&(result.semaphore), 0, "fw_write");

	bytes_left = buf_len;
	offset = 0;
	userp = (uint8_t *)buf;

	if (FUNC2(ocs, &dma, FW_WRITE_BUFSIZE, 4096)) {
		FUNC5(ocs, "ocs_mgmt_firmware_write: malloc failed");
		return -ENOMEM;
	}

	while (bytes_left > 0) {


		if (bytes_left > FW_WRITE_BUFSIZE) {
			xfer_size = FW_WRITE_BUFSIZE;
		} else {
			xfer_size = bytes_left;
		}

		/* Copy xfer_size bytes from user space to kernel buffer */
		if (FUNC0(dma.virt, userp, xfer_size)) {
			rc = -EFAULT;
			break;
		}

		/* See if this is the last block */
		if (bytes_left == xfer_size) {
			last = 1;
		}

		/* Send the HW command */
		FUNC4(&ocs->hw, &dma, xfer_size, offset, last, ocs_mgmt_fw_write_cb, &result);

		/* Wait for semaphore to be signaled when the command completes
		 * TODO:  Should there be a timeout on this?  If so, how long? */
		if (FUNC9(&(result.semaphore), OCS_SEM_FOREVER) != 0) {
			FUNC5(ocs, "ocs_sem_p failed\n");
			rc = -ENXIO;
			break;
		}

		if (result.actual_xfer == 0) {
			FUNC6(ocs, "actual_write_length is %d\n", result.actual_xfer);
			rc = -EFAULT;
			break;
		}

		/* Check status */
		if (result.status != 0) {
			FUNC6(ocs, "write returned status %d\n", result.status);
			rc = -EFAULT;
			break;
		}

		if (last) {
			change_status = result.change_status;
		}

		bytes_left -= result.actual_xfer;
		offset += result.actual_xfer;
		userp += result.actual_xfer;

	}

	/* Create string with status and copy to userland */
	if ((arg_out_length > 0) && (arg_out != NULL)) {
		if (arg_out_length > sizeof(status_str)) {
			arg_out_length = sizeof(status_str);
		}
		FUNC7(status_str, 0, sizeof(status_str));
		FUNC10(status_str, arg_out_length, "%d", change_status);
		if (FUNC1(arg_out, status_str, arg_out_length)) {
			FUNC6(ocs, "copy to user failed for change_status\n");
		}
	}


	FUNC3(ocs, &dma);

	return rc;
}