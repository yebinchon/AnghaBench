
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* bounce; void* rnode; void* unsolicited; void* port; void* domain; } ;
struct TYPE_6__ {void* bounce; void* rnode; void* unsolicited; void* port; void* domain; } ;
struct TYPE_8__ {int os; TYPE_2__ args; TYPE_1__ callback; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
typedef int ocs_hw_callback_e ;




 int OCS_HW_CB_MAX ;



 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int ocs_log_err (int *,char*,TYPE_3__*,int,void*) ;
 int ocs_log_test (int ,char*,int) ;

ocs_hw_rtn_e
ocs_hw_callback(ocs_hw_t *hw, ocs_hw_callback_e which, void *func, void *arg)
{

 if (!hw || !func || (which >= OCS_HW_CB_MAX)) {
  ocs_log_err(((void*)0), "bad parameter hw=%p which=%#x func=%p\n",
       hw, which, func);
  return OCS_HW_RTN_ERROR;
 }

 switch (which) {
 case 131:
  hw->callback.domain = func;
  hw->args.domain = arg;
  break;
 case 130:
  hw->callback.port = func;
  hw->args.port = arg;
  break;
 case 128:
  hw->callback.unsolicited = func;
  hw->args.unsolicited = arg;
  break;
 case 129:
  hw->callback.rnode = func;
  hw->args.rnode = arg;
  break;
 case 132:
  hw->callback.bounce = func;
  hw->args.bounce = arg;
  break;
 default:
  ocs_log_test(hw->os, "unknown callback %#x\n", which);
  return OCS_HW_RTN_ERROR;
 }

 return OCS_HW_RTN_SUCCESS;
}
