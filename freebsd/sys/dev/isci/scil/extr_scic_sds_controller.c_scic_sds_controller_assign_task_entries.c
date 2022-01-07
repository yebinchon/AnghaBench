
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {scalar_t__ task_context_entries; } ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int ENDING ;
 int RANGE_CHECK_ENABLE ;
 int SMU_TCA_GEN_BIT (int ) ;
 int SMU_TCA_GEN_VAL (int ,scalar_t__) ;
 int SMU_TCA_READ (TYPE_1__*,int ) ;
 int SMU_TCA_WRITE (TYPE_1__*,int ,int) ;
 int STARTING ;

void scic_sds_controller_assign_task_entries(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 task_assignment;



   task_assignment = SMU_TCA_READ(this_controller, 0);

   task_assignment =
      (
          task_assignment
        | (SMU_TCA_GEN_VAL(STARTING, 0))
        | (SMU_TCA_GEN_VAL(ENDING, this_controller->task_context_entries - 1))
        | (SMU_TCA_GEN_BIT(RANGE_CHECK_ENABLE))
      );

   SMU_TCA_WRITE(this_controller, 0, task_assignment);
}
