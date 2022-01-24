#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ocs_scsi_io_status_e ;
struct TYPE_6__ {int /*<<< orphan*/ * response_data; int /*<<< orphan*/  response_data_length; } ;
typedef  TYPE_1__ ocs_scsi_cmd_resp_t ;
struct TYPE_7__ {int /*<<< orphan*/  ocs; } ;
typedef  TYPE_2__ ocs_io_t ;
typedef  int int32_t ;

/* Variables and functions */
#define  OCS_SCSI_STATUS_CHECK_RESPONSE 130 
#define  OCS_SCSI_STATUS_GOOD 129 
#define  OCS_SCSI_STATUS_NO_IO 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int32_t
FUNC3(ocs_io_t *io, ocs_scsi_io_status_e scsi_status,
		ocs_scsi_cmd_resp_t *rsp, uint32_t flags, void *arg)
{
	int32_t	rc = 0;

	switch (scsi_status) {
	case OCS_SCSI_STATUS_GOOD:
	case OCS_SCSI_STATUS_NO_IO:
		break;
	case OCS_SCSI_STATUS_CHECK_RESPONSE:
		if (rsp->response_data_length == 0) {
			FUNC1(io->ocs, "check response without data?!?\n");
			rc = -1;
			break;
		}

		if (rsp->response_data[3] != 0) {
			FUNC1(io->ocs, "TMF status %08x\n",
				FUNC0(*((uint32_t *)rsp->response_data)));
			rc = -1;
			break;
		}
		break;
	default:
		FUNC1(io->ocs, "status=%#x\n", scsi_status);
		rc = -1;
	}

	FUNC2(io);

	return rc;
}