
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t eq_count; scalar_t__ state; int * eq; int sli; int os; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int int32_t ;


 scalar_t__ OCS_HW_STATE_UNINITIALIZED ;
 int TRUE ;
 int ocs_log_err (int ,char*,...) ;
 int sli_queue_arm (int *,int *,int ) ;
 int sli_queue_is_empty (int *,int *) ;

int32_t
ocs_hw_event_check(ocs_hw_t *hw, uint32_t vector)
{
 int32_t rc = 0;

 if (!hw) {
  ocs_log_err(((void*)0), "HW context NULL?!?\n");
  return -1;
 }

 if (vector > hw->eq_count) {
  ocs_log_err(hw->os, "vector %d. max %d\n",
    vector, hw->eq_count);
  return -1;
 }
 if (hw->state != OCS_HW_STATE_UNINITIALIZED) {
  rc = sli_queue_is_empty(&hw->sli, &hw->eq[vector]);


  if (rc != 0) {
   sli_queue_arm(&hw->sli, &hw->eq[vector], TRUE);
  }
 }
 return rc;
}
