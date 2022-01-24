#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_int ;
typedef  int /*<<< orphan*/  target_id_t ;
struct mpt_softc {scalar_t__ verbose; TYPE_2__* tmf_req; int /*<<< orphan*/  request_pending_list; } ;
typedef  int /*<<< orphan*/  lun_id_t ;
struct TYPE_12__ {int state; int index; int /*<<< orphan*/  serno; scalar_t__ req_vbuf; } ;
struct TYPE_11__ {int /*<<< orphan*/  MsgContext; void* TaskMsgContext; int /*<<< orphan*/  LUN; void* MsgFlags; void* TaskType; int /*<<< orphan*/  Function; void* Bus; int /*<<< orphan*/  TargetID; } ;
typedef  TYPE_1__ MSG_SCSI_TASK_MGMT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MPI_FUNCTION_SCSI_TASK_MGMT ; 
 int MPT_OK ; 
 scalar_t__ MPT_PRT_DEBUG ; 
 int /*<<< orphan*/  MPT_TMF_MAX_TIMEOUT ; 
 int REQ_STATE_ALLOCATED ; 
 int REQ_STATE_FREE ; 
 int REQ_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mpt_softc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct mpt_softc*,scalar_t__,char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (struct mpt_softc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mpt_softc*,int,TYPE_1__*) ; 
 int FUNC13 (struct mpt_softc*,TYPE_2__*,int,int,int,int /*<<< orphan*/ ) ; 
 int scsi_tmf_handler_id ; 

__attribute__((used)) static int
FUNC14(struct mpt_softc *mpt, u_int type, u_int flags,
    u_int channel, target_id_t target, lun_id_t lun, u_int abort_ctx,
    int sleep_ok)
{
	MSG_SCSI_TASK_MGMT *tmf_req;
	int		    error;

	/*
	 * Wait for any current TMF request to complete.
	 * We're only allowed to issue one TMF at a time.
	 */
	error = FUNC13(mpt, mpt->tmf_req, REQ_STATE_FREE, REQ_STATE_FREE,
	    sleep_ok, MPT_TMF_MAX_TIMEOUT);
	if (error != 0) {
		FUNC11(mpt, TRUE);
		return (ETIMEDOUT);
	}

	FUNC7(mpt, mpt->tmf_req);
	mpt->tmf_req->state = REQ_STATE_ALLOCATED|REQ_STATE_QUEUED;

	tmf_req = (MSG_SCSI_TASK_MGMT *)mpt->tmf_req->req_vbuf;
	FUNC6(tmf_req, 0, sizeof(*tmf_req));
	tmf_req->TargetID = target;
	tmf_req->Bus = channel;
	tmf_req->Function = MPI_FUNCTION_SCSI_TASK_MGMT;
	tmf_req->TaskType = type;
	tmf_req->MsgFlags = flags;
	tmf_req->MsgContext =
	    FUNC5(mpt->tmf_req->index | scsi_tmf_handler_id);
	FUNC4(tmf_req->LUN, FUNC0(lun));
	tmf_req->TaskMsgContext = abort_ctx;

	FUNC8(mpt, MPT_PRT_DEBUG,
	    "Issuing TMF %p:%u with MsgContext of 0x%x\n", mpt->tmf_req,
	    mpt->tmf_req->serno, tmf_req->MsgContext);
	if (mpt->verbose > MPT_PRT_DEBUG) {
		FUNC9(tmf_req);
	}

	FUNC1(FUNC10(mpt, mpt->tmf_req) == 0,
	    ("mpt_scsi_send_tmf: tmf_req already on pending list"));
	FUNC2(&mpt->request_pending_list, mpt->tmf_req, links);
	error = FUNC12(mpt, sizeof(*tmf_req), tmf_req);
	if (error != MPT_OK) {
		FUNC3(&mpt->request_pending_list, mpt->tmf_req, links);
		mpt->tmf_req->state = REQ_STATE_FREE;
		FUNC11(mpt, TRUE);
	}
	return (error);
}