
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef TYPE_1__ sli4_mbox_command_header_t ;
typedef int ocs_sm_event_t ;
struct TYPE_6__ {int ctx; int indicator; } ;
typedef TYPE_2__ ocs_sli_port_t ;
struct TYPE_7__ {int os; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int int32_t ;


 int OCS_EVT_ERROR ;
 int OCS_EVT_RESPONSE ;
 int ocs_log_debug (int ,char*,int ,int ,scalar_t__) ;
 int ocs_sm_post_event (int *,int ,int *) ;

__attribute__((used)) static int32_t
__ocs_hw_port_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_sli_port_t *sport = arg;
 sli4_mbox_command_header_t *hdr = (sli4_mbox_command_header_t *)mqe;
 ocs_sm_event_t evt;

 if (status || hdr->status) {
  ocs_log_debug(hw->os, "bad status vpi=%#x st=%x hdr=%x\n",
         sport->indicator, status, hdr->status);
  evt = OCS_EVT_ERROR;
 } else {
  evt = OCS_EVT_RESPONSE;
 }

 ocs_sm_post_event(&sport->ctx, evt, mqe);

 return 0;
}
