
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dcbx_results {TYPE_1__* arr; } ;
struct ecore_dcbx_app_prio {void* eth; void* fcoe; void* roce_v2; void* roce; void* iscsi; } ;
struct TYPE_2__ {void* priority; scalar_t__ enable; scalar_t__ update; } ;


 size_t DCBX_PROTOCOL_ETH ;
 size_t DCBX_PROTOCOL_FCOE ;
 size_t DCBX_PROTOCOL_ISCSI ;
 size_t DCBX_PROTOCOL_ROCE ;
 size_t DCBX_PROTOCOL_ROCE_V2 ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,void*,void*,void*,void*,void*) ;
 void* ECORE_DCBX_INVALID_PRIORITY ;
 int ECORE_MSG_DCB ;

__attribute__((used)) static void
ecore_dcbx_get_priority_info(struct ecore_hwfn *p_hwfn,
        struct ecore_dcbx_app_prio *p_prio,
        struct ecore_dcbx_results *p_results)
{
 u8 val;

 p_prio->roce = ECORE_DCBX_INVALID_PRIORITY;
 p_prio->roce_v2 = ECORE_DCBX_INVALID_PRIORITY;
 p_prio->iscsi = ECORE_DCBX_INVALID_PRIORITY;
 p_prio->fcoe = ECORE_DCBX_INVALID_PRIORITY;

 if (p_results->arr[DCBX_PROTOCOL_ROCE].update &&
     p_results->arr[DCBX_PROTOCOL_ROCE].enable)
  p_prio->roce = p_results->arr[DCBX_PROTOCOL_ROCE].priority;

 if (p_results->arr[DCBX_PROTOCOL_ROCE_V2].update &&
     p_results->arr[DCBX_PROTOCOL_ROCE_V2].enable) {
  val = p_results->arr[DCBX_PROTOCOL_ROCE_V2].priority;
  p_prio->roce_v2 = val;
 }

 if (p_results->arr[DCBX_PROTOCOL_ISCSI].update &&
     p_results->arr[DCBX_PROTOCOL_ISCSI].enable)
  p_prio->iscsi = p_results->arr[DCBX_PROTOCOL_ISCSI].priority;

 if (p_results->arr[DCBX_PROTOCOL_FCOE].update &&
     p_results->arr[DCBX_PROTOCOL_FCOE].enable)
  p_prio->fcoe = p_results->arr[DCBX_PROTOCOL_FCOE].priority;

 if (p_results->arr[DCBX_PROTOCOL_ETH].update &&
     p_results->arr[DCBX_PROTOCOL_ETH].enable)
  p_prio->eth = p_results->arr[DCBX_PROTOCOL_ETH].priority;

 DP_VERBOSE(p_hwfn, ECORE_MSG_DCB,
     "Priorities: iscsi %d, roce %d, roce v2 %d, fcoe %d, eth %d\n",
     p_prio->iscsi, p_prio->roce, p_prio->roce_v2, p_prio->fcoe,
     p_prio->eth);
}
