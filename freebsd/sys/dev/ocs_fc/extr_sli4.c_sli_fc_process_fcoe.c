
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int fip_arg; int (* fip ) (int ,TYPE_2__*) ;int os; } ;
typedef TYPE_1__ sli4_t ;
struct TYPE_7__ {int type; int index; int member_0; } ;
typedef TYPE_2__ sli4_fip_event_t ;
struct TYPE_8__ {int event_type; int event_information; int event_tag; int fcf_count; } ;
typedef TYPE_3__ sli4_fcoe_fip_t ;
typedef int int32_t ;







 int UINT16_MAX ;
 void* UINT32_MAX ;
 int ocs_log_debug (int ,char*,...) ;
 int ocs_log_test (int ,char*,int) ;
 int stub1 (int ,TYPE_2__*) ;

int32_t
sli_fc_process_fcoe(sli4_t *sli4, void *acqe)
{
 sli4_fcoe_fip_t *fcoe = acqe;
 sli4_fip_event_t event = { 0 };
 uint32_t mask = UINT32_MAX;

 ocs_log_debug(sli4->os, "ACQE FCoE FIP type=%02x count=%d tag=%#x\n",
   fcoe->event_type,
   fcoe->fcf_count,
   fcoe->event_tag);

 if (!sli4->fip) {
  return 0;
 }

 event.type = fcoe->event_type;
 event.index = UINT32_MAX;

 switch (fcoe->event_type) {
 case 130:
  ocs_log_debug(sli4->os, "FCF Discovered index=%d\n", fcoe->event_information);
  break;
 case 128:
  ocs_log_debug(sli4->os, "FCF Table Full\n");
  mask = 0;
  break;
 case 131:
  ocs_log_debug(sli4->os, "FCF Dead/Gone index=%d\n", fcoe->event_information);
  break;
 case 132:
  mask = UINT16_MAX;
  ocs_log_debug(sli4->os, "Clear VLINK Received VPI=%#x\n", fcoe->event_information & mask);
  break;
 case 129:
  ocs_log_debug(sli4->os, "FCF Modified\n");
  break;
 default:
  ocs_log_test(sli4->os, "bad FCoE type %#x", fcoe->event_type);
  mask = 0;
 }

 if (mask != 0) {
  event.index = fcoe->event_information & mask;
 }

 sli4->fip(sli4->fip_arg, &event);

 return 0;
}
