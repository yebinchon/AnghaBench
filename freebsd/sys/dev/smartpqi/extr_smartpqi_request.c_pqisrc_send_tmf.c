
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int tmf_req ;
struct TYPE_20__ {int req_pending; scalar_t__ status; int resp_qid; int tag; } ;
typedef TYPE_2__ rcb_t ;
struct TYPE_21__ {int * op_raid_ib_q; } ;
typedef TYPE_3__ pqisrc_softstate_t ;
struct TYPE_19__ {int iu_length; int iu_type; } ;
struct TYPE_22__ {int tmf; int req_id_to_manage; int obq_id_to_manage; int resp_qid; int lun; int req_id; TYPE_1__ header; } ;
typedef TYPE_4__ pqi_tmf_req_t ;
struct TYPE_23__ {int scsi3addr; } ;
typedef TYPE_5__ pqi_scsi_dev_t ;
typedef int iu_header_t ;


 int DBG_ERR (char*,int) ;
 int DBG_ERR_BTL (TYPE_5__*,char*,int,scalar_t__) ;
 int DBG_FUNC (char*) ;
 size_t OS_GET_TMF_REQ_QINDEX (TYPE_3__*,TYPE_2__*) ;
 int OS_GET_TMF_RESP_QID (TYPE_3__*,TYPE_2__*) ;
 int PQI_REQUEST_IU_TASK_MANAGEMENT ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 scalar_t__ REQUEST_FAILED ;
 scalar_t__ REQUEST_SUCCESS ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int pqisrc_submit_cmnd (TYPE_3__*,int *,TYPE_4__*) ;
 int pqisrc_wait_on_condition (TYPE_3__*,TYPE_2__*) ;

int pqisrc_send_tmf(pqisrc_softstate_t *softs, pqi_scsi_dev_t *devp,
                    rcb_t *rcb, int req_id, int tmf_type)
{
 int rval = PQI_STATUS_SUCCESS;
 pqi_tmf_req_t tmf_req;

 memset(&tmf_req, 0, sizeof(pqi_tmf_req_t));

 DBG_FUNC("IN");

 tmf_req.header.iu_type = PQI_REQUEST_IU_TASK_MANAGEMENT;
 tmf_req.header.iu_length = sizeof(tmf_req) - sizeof(iu_header_t);
 tmf_req.req_id = rcb->tag;

 memcpy(tmf_req.lun, devp->scsi3addr, sizeof(tmf_req.lun));
 tmf_req.tmf = tmf_type;
 tmf_req.req_id_to_manage = req_id;
 tmf_req.resp_qid = OS_GET_TMF_RESP_QID(softs, rcb);
 tmf_req.obq_id_to_manage = rcb->resp_qid;

 rcb->req_pending = 1;

 rval = pqisrc_submit_cmnd(softs,
 &softs->op_raid_ib_q[OS_GET_TMF_REQ_QINDEX(softs, rcb)], &tmf_req);
 if (rval != PQI_STATUS_SUCCESS) {
  DBG_ERR("Unable to submit command rval=%d\n", rval);
  return rval;
 }

 rval = pqisrc_wait_on_condition(softs, rcb);
 if (rval != PQI_STATUS_SUCCESS){
  DBG_ERR("Task Management tmf_type : %d timeout\n", tmf_type);
  rcb->status = REQUEST_FAILED;
 }

 if (rcb->status != REQUEST_SUCCESS) {
  DBG_ERR_BTL(devp, "Task Management failed tmf_type:%d "
    "stat:0x%x\n", tmf_type, rcb->status);
  rval = PQI_STATUS_FAILURE;
 }

 DBG_FUNC("OUT");
 return rval;
}
