
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__** hw_eq; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int int32_t ;
struct TYPE_7__ {int use_count; } ;
typedef TYPE_2__ hw_eq_t ;


 int CPUTRACE (char*) ;
 scalar_t__ OCS_HW_STATE_UNINITIALIZED ;
 int OCS_STAT (int ) ;
 int ocs_hw_eq_process (TYPE_1__*,TYPE_2__*,size_t) ;

int32_t
ocs_hw_process(ocs_hw_t *hw, uint32_t vector, uint32_t max_isr_time_msec)
{
 hw_eq_t *eq;
 int32_t rc = 0;

 CPUTRACE("");
 if (hw->state == OCS_HW_STATE_UNINITIALIZED) {
  return 0;
 }


 eq = hw->hw_eq[vector];

 OCS_STAT(eq->use_count++);

 rc = ocs_hw_eq_process(hw, eq, max_isr_time_msec);

 return rc;
}
