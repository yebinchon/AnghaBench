#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmf_req ;
struct TYPE_20__ {int req_pending; scalar_t__ status; int /*<<< orphan*/  resp_qid; int /*<<< orphan*/  tag; } ;
typedef  TYPE_2__ rcb_t ;
struct TYPE_21__ {int /*<<< orphan*/ * op_raid_ib_q; } ;
typedef  TYPE_3__ pqisrc_softstate_t ;
struct TYPE_19__ {int iu_length; int /*<<< orphan*/  iu_type; } ;
struct TYPE_22__ {int tmf; int req_id_to_manage; int /*<<< orphan*/  obq_id_to_manage; int /*<<< orphan*/  resp_qid; int /*<<< orphan*/  lun; int /*<<< orphan*/  req_id; TYPE_1__ header; } ;
typedef  TYPE_4__ pqi_tmf_req_t ;
struct TYPE_23__ {int /*<<< orphan*/  scsi3addr; } ;
typedef  TYPE_5__ pqi_scsi_dev_t ;
typedef  int /*<<< orphan*/  iu_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  PQI_REQUEST_IU_TASK_MANAGEMENT ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 scalar_t__ REQUEST_FAILED ; 
 scalar_t__ REQUEST_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__*) ; 

int FUNC9(pqisrc_softstate_t *softs, pqi_scsi_dev_t *devp,
                    rcb_t *rcb, int req_id, int tmf_type)
{
	int rval = PQI_STATUS_SUCCESS;
	pqi_tmf_req_t tmf_req;

	FUNC6(&tmf_req, 0, sizeof(pqi_tmf_req_t));

	FUNC2("IN");

	tmf_req.header.iu_type = PQI_REQUEST_IU_TASK_MANAGEMENT;
	tmf_req.header.iu_length = sizeof(tmf_req) - sizeof(iu_header_t);
	tmf_req.req_id = rcb->tag;

	FUNC5(tmf_req.lun, devp->scsi3addr, sizeof(tmf_req.lun));
	tmf_req.tmf = tmf_type;
	tmf_req.req_id_to_manage = req_id;
	tmf_req.resp_qid = FUNC4(softs, rcb);
	tmf_req.obq_id_to_manage = rcb->resp_qid;

	rcb->req_pending = true;

	rval = FUNC7(softs,
	&softs->op_raid_ib_q[FUNC3(softs, rcb)], &tmf_req);
	if (rval != PQI_STATUS_SUCCESS) {
		FUNC0("Unable to submit command rval=%d\n", rval);
		return rval;
	}

	rval = FUNC8(softs, rcb);
	if (rval != PQI_STATUS_SUCCESS){
		FUNC0("Task Management tmf_type : %d timeout\n", tmf_type);
		rcb->status = REQUEST_FAILED;
	}

	if (rcb->status  != REQUEST_SUCCESS) {
		FUNC1(devp, "Task Management failed tmf_type:%d "
				"stat:0x%x\n", tmf_type, rcb->status);
		rval = PQI_STATUS_FAILURE;
	}

	FUNC2("OUT");
	return rval;
}