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
struct TYPE_3__ {int Function; } ;
typedef  int /*<<< orphan*/  PTR_MSG_TARGET_ASSIST_REQUEST ;
typedef  int /*<<< orphan*/  MSG_TARGET_STATUS_SEND_REQUEST ;
typedef  int /*<<< orphan*/  MSG_SCSI_TASK_MGMT ;
typedef  int /*<<< orphan*/  MSG_SCSI_IO_REQUEST ;
typedef  TYPE_1__ MSG_REQUEST_HEADER ;

/* Variables and functions */
#define  MPI_FUNCTION_RAID_SCSI_IO_PASSTHROUGH 132 
#define  MPI_FUNCTION_SCSI_IO_REQUEST 131 
#define  MPI_FUNCTION_SCSI_TASK_MGMT 130 
#define  MPI_FUNCTION_TARGET_ASSIST 129 
#define  MPI_FUNCTION_TARGET_STATUS_SEND 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void *vreq)
{
	MSG_REQUEST_HEADER *req = vreq;

	switch (req->Function) {
	case MPI_FUNCTION_SCSI_IO_REQUEST:
	case MPI_FUNCTION_RAID_SCSI_IO_PASSTHROUGH:
		FUNC1((MSG_SCSI_IO_REQUEST *)req);
		break;
	case MPI_FUNCTION_SCSI_TASK_MGMT:
		FUNC4((MSG_SCSI_TASK_MGMT *)req);
		break;
	case MPI_FUNCTION_TARGET_ASSIST:
		FUNC2(
		    (PTR_MSG_TARGET_ASSIST_REQUEST)req);
		break;
	case MPI_FUNCTION_TARGET_STATUS_SEND:
		FUNC3(
		    (MSG_TARGET_STATUS_SEND_REQUEST *)req);
		break;
	default:
		FUNC0(req);
		break;
	}
}