
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {size_t tag; int status; int req_pending; } ;
typedef TYPE_1__ rcb_t ;
struct TYPE_7__ {TYPE_1__* rcb; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
struct TYPE_8__ {int resp_code; int req_id; } ;
typedef TYPE_3__ pqi_tmf_resp_t ;


 int ASSERT (int) ;
 int DBG_ERR (char*,int) ;
 int DBG_FUNC (char*) ;
 int REQUEST_FAILED ;
 int REQUEST_SUCCESS ;



int pqisrc_process_task_management_response(pqisrc_softstate_t *softs,
   pqi_tmf_resp_t *tmf_resp)
{
 int ret = REQUEST_SUCCESS;
 uint32_t tag = (uint32_t)tmf_resp->req_id;
 rcb_t *rcb = &softs->rcb[tag];

 ASSERT(rcb->tag == tag);

 DBG_FUNC("IN\n");

 switch (tmf_resp->resp_code) {
 case 129:
 case 128:
  ret = REQUEST_SUCCESS;
  break;
 default:
  DBG_ERR("TMF Failed, Response code : 0x%x\n", tmf_resp->resp_code);
  ret = REQUEST_FAILED;
  break;
 }

 rcb->status = ret;
 rcb->req_pending = 0;

 DBG_FUNC("OUT");
 return ret;
}
