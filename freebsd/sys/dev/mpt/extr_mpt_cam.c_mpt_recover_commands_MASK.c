#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  target_lun; int /*<<< orphan*/  target_id; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct mpt_softc {TYPE_4__* tmf_req; int /*<<< orphan*/  request_pending_list; int /*<<< orphan*/  request_timeout_list; } ;
struct TYPE_9__ {int index; int /*<<< orphan*/  serno; union ccb* ccb; TYPE_3__* req_vbuf; } ;
typedef  TYPE_2__ request_t ;
struct TYPE_11__ {int /*<<< orphan*/  state; int /*<<< orphan*/  ResponseCode; int /*<<< orphan*/  IOCStatus; } ;
struct TYPE_10__ {int Function; } ;
typedef  TYPE_3__ MSG_REQUEST_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_CMD_TIMEOUT ; 
#define  MPI_FUNCTION_RAID_SCSI_IO_PASSTHROUGH 129 
#define  MPI_FUNCTION_SCSI_IO_REQUEST 128 
 int MPI_IOCSTATUS_MASK ; 
 int MPI_IOCSTATUS_SUCCESS ; 
 int /*<<< orphan*/  MPI_SCSITASKMGMT_RSP_TM_COMPLETE ; 
 int /*<<< orphan*/  MPI_SCSITASKMGMT_RSP_TM_SUCCEEDED ; 
 int /*<<< orphan*/  MPI_SCSITASKMGMT_TASKTYPE_ABORT_TASK ; 
 int /*<<< orphan*/  REQ_STATE_DONE ; 
 int /*<<< orphan*/  REQ_STATE_FREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC6 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mpt_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (union ccb*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mpt_softc*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int scsi_io_handler_id ; 

__attribute__((used)) static void
FUNC13(struct mpt_softc *mpt)
{
	request_t	   *req;
	union ccb	   *ccb;
	int		    error;

	if (FUNC0(&mpt->request_timeout_list) != 0) {
		/*
		 * No work to do- leave.
		 */
		FUNC8(mpt, "mpt_recover_commands: no requests.\n");
		return;
	}

	/*
	 * Flush any commands whose completion coincides with their timeout.
	 */
	FUNC7(mpt);

	if (FUNC0(&mpt->request_timeout_list) != 0) {
		/*
		 * The timedout commands have already
		 * completed.  This typically means
		 * that either the timeout value was on
		 * the hairy edge of what the device
		 * requires or - more likely - interrupts
		 * are not happening.
		 */
		FUNC8(mpt, "Timedout requests already complete. "
		    "Interrupts may not be functioning.\n");
		FUNC6(mpt);
		return;
	}

	/*
	 * We have no visibility into the current state of the
	 * controller, so attempt to abort the commands in the
	 * order they timed-out. For initiator commands, we
	 * depend on the reply handler pulling requests off
	 * the timeout list.
	 */
	while ((req = FUNC1(&mpt->request_timeout_list)) != NULL) {
		uint16_t status;
		uint8_t response;
		MSG_REQUEST_HEADER *hdrp = req->req_vbuf;

		FUNC8(mpt, "attempting to abort req %p:%u function %x\n",
		    req, req->serno, hdrp->Function);
		ccb = req->ccb;
		if (ccb == NULL) {
			FUNC8(mpt, "null ccb in timed out request. "
			    "Resetting Controller.\n");
			FUNC9(mpt, TRUE);
			continue;
		}
		FUNC11(ccb, CAM_CMD_TIMEOUT);

		/*
		 * Check to see if this is not an initiator command and
		 * deal with it differently if it is.
		 */
		switch (hdrp->Function) {
		case MPI_FUNCTION_SCSI_IO_REQUEST:
		case MPI_FUNCTION_RAID_SCSI_IO_PASSTHROUGH:
			break;
		default:
			/*
			 * XXX: FIX ME: need to abort target assists...
			 */
			FUNC8(mpt, "just putting it back on the pend q\n");
			FUNC3(&mpt->request_timeout_list, req, links);
			FUNC2(&mpt->request_pending_list, req,
			    links);
			continue;
		}

		error = FUNC10(mpt,
		    MPI_SCSITASKMGMT_TASKTYPE_ABORT_TASK,
		    0, 0, ccb->ccb_h.target_id, ccb->ccb_h.target_lun,
		    FUNC4(req->index | scsi_io_handler_id), TRUE);

		if (error != 0) {
			/*
			 * mpt_scsi_send_tmf hard resets on failure, so no
			 * need to do so here.  Our queue should be emptied
			 * by the hard reset.
			 */
			continue;
		}

		error = FUNC12(mpt, mpt->tmf_req, REQ_STATE_DONE,
		    REQ_STATE_DONE, TRUE, 500);

		status = FUNC5(mpt->tmf_req->IOCStatus);
		response = mpt->tmf_req->ResponseCode;
		mpt->tmf_req->state = REQ_STATE_FREE;

		if (error != 0) {
			/*
			 * If we've errored out,, reset the controller.
			 */
			FUNC8(mpt, "mpt_recover_commands: abort timed-out. "
			    "Resetting controller\n");
			FUNC9(mpt, TRUE);
			continue;
		}

		if ((status & MPI_IOCSTATUS_MASK) != MPI_IOCSTATUS_SUCCESS) {
			FUNC8(mpt, "mpt_recover_commands: IOC Status 0x%x. "
			    "Resetting controller.\n", status);
			FUNC9(mpt, TRUE);
			continue;
		}

		if (response != MPI_SCSITASKMGMT_RSP_TM_SUCCEEDED &&
		    response != MPI_SCSITASKMGMT_RSP_TM_COMPLETE) {
			FUNC8(mpt, "mpt_recover_commands: TMF Response 0x%x. "
			    "Resetting controller.\n", response);
			FUNC9(mpt, TRUE);
			continue;
		}
		FUNC8(mpt, "abort of req %p:%u completed\n", req, req->serno);
	}
}