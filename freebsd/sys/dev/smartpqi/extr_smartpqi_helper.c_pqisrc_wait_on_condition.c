
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int req_pending; } ;
typedef TYPE_1__ rcb_t ;
typedef int pqisrc_softstate_t ;


 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;
 int IS_POLLING_REQUIRED (int *) ;
 int OS_SLEEP (int) ;
 scalar_t__ PQISRC_CMD_TIMEOUT_CNT ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int PQI_STATUS_TIMEOUT ;
 scalar_t__ pqisrc_ctrl_offline (int *) ;

int pqisrc_wait_on_condition(pqisrc_softstate_t *softs, rcb_t *rcb){

 DBG_FUNC("IN\n");

 int ret = PQI_STATUS_SUCCESS;
 uint32_t loop_cnt = 0;

 while (rcb->req_pending == 1) {
  OS_SLEEP(500);





  IS_POLLING_REQUIRED(softs);

  if (loop_cnt++ == PQISRC_CMD_TIMEOUT_CNT) {
   DBG_ERR("ERR: Requested cmd timed out !!!\n");
   ret = PQI_STATUS_TIMEOUT;
   break;
  }

  if (pqisrc_ctrl_offline(softs)) {
   DBG_ERR("Controller is Offline");
   ret = PQI_STATUS_FAILURE;
   break;
  }

 }
 rcb->req_pending = 1;

 DBG_FUNC("OUT\n");

 return ret;
}
