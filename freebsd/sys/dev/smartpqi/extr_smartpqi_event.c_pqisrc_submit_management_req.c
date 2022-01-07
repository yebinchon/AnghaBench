
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int req_pending; size_t tag; } ;
typedef TYPE_1__ rcb_t ;
struct TYPE_12__ {int taglist; TYPE_1__* rcb; int * op_raid_ib_q; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
struct TYPE_13__ {size_t request_id; } ;
typedef TYPE_3__ pqi_event_config_request_t ;
typedef int ib_queue_t ;


 int DBG_ERR (char*) ;
 int DBG_FUNC (char*,...) ;
 size_t INVALID_ELEM ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int os_reset_rcb (TYPE_1__*) ;
 size_t pqisrc_get_tag (int *) ;
 int pqisrc_put_tag (int *,size_t) ;
 int pqisrc_submit_cmnd (TYPE_2__*,int *,TYPE_3__*) ;
 int pqisrc_wait_on_condition (TYPE_2__*,TYPE_1__*) ;

int pqisrc_submit_management_req(pqisrc_softstate_t *softs,
                                      pqi_event_config_request_t *request)
{
 int ret = PQI_STATUS_SUCCESS;
 ib_queue_t *op_ib_q = &softs->op_raid_ib_q[0];
 rcb_t *rcb = ((void*)0);

 DBG_FUNC(" IN\n");


 request->request_id = pqisrc_get_tag(&softs->taglist);
 if (INVALID_ELEM == request->request_id) {
  DBG_ERR("Tag not available\n");
  ret = PQI_STATUS_FAILURE;
  goto err_out;
 }

 rcb = &softs->rcb[request->request_id];
 rcb->req_pending = 1;
 rcb->tag = request->request_id;

 ret = pqisrc_submit_cmnd(softs, op_ib_q, request);
 if (ret != PQI_STATUS_SUCCESS) {
  DBG_ERR("  Unable to submit command\n");
  goto err_cmd;
 }

 ret = pqisrc_wait_on_condition(softs, rcb);
 if (ret != PQI_STATUS_SUCCESS) {
  DBG_ERR("Management request timed out !!\n");
  goto err_cmd;
 }

 os_reset_rcb(rcb);
  pqisrc_put_tag(&softs->taglist,request->request_id);
 DBG_FUNC("OUT\n");
 return ret;

err_cmd:
 os_reset_rcb(rcb);
 pqisrc_put_tag(&softs->taglist,request->request_id);
err_out:
 DBG_FUNC(" failed OUT : %d\n", ret);
 return ret;
}
