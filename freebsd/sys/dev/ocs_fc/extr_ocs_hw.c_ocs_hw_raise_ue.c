
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ state; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 scalar_t__ OCS_HW_STATE_QUEUES_ALLOCATED ;
 scalar_t__ OCS_HW_STATE_UNINITIALIZED ;
 scalar_t__ sli_raise_ue (int *,int ) ;

ocs_hw_rtn_e
ocs_hw_raise_ue(ocs_hw_t *hw, uint8_t dump)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;

 if (sli_raise_ue(&hw->sli, dump) != 0) {
  rc = OCS_HW_RTN_ERROR;
 } else {
  if (hw->state != OCS_HW_STATE_UNINITIALIZED) {
   hw->state = OCS_HW_STATE_QUEUES_ALLOCATED;
  }
 }

 return rc;
}
