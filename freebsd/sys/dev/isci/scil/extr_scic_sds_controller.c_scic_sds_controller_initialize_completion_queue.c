
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_6__ {size_t completion_queue_get; size_t completion_queue_entries; int* completion_queue; scalar_t__ completion_event_entries; } ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int ENABLE ;
 int EVENT_ENABLE ;
 int EVENT_POINTER ;
 int POINTER ;
 size_t SMU_CQC_EVENT_LIMIT_SET (scalar_t__) ;
 size_t SMU_CQC_QUEUE_LIMIT_SET (size_t) ;
 int SMU_CQC_WRITE (TYPE_1__*,size_t) ;
 size_t SMU_CQGR_GEN_BIT (int ) ;
 size_t SMU_CQGR_GEN_VAL (int ,int ) ;
 int SMU_CQGR_WRITE (TYPE_1__*,size_t) ;
 size_t SMU_CQPR_GEN_VAL (int ,int ) ;
 int SMU_CQPR_WRITE (TYPE_1__*,size_t) ;

void scic_sds_controller_initialize_completion_queue(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 index;
   U32 completion_queue_control_value;
   U32 completion_queue_get_value;
   U32 completion_queue_put_value;

   this_controller->completion_queue_get = 0;

   completion_queue_control_value = (
        SMU_CQC_QUEUE_LIMIT_SET(this_controller->completion_queue_entries - 1)
      | SMU_CQC_EVENT_LIMIT_SET(this_controller->completion_event_entries - 1)
   );

   SMU_CQC_WRITE(this_controller, completion_queue_control_value);


   completion_queue_get_value = (
        (SMU_CQGR_GEN_VAL(POINTER, 0))
      | (SMU_CQGR_GEN_VAL(EVENT_POINTER, 0))
      | (SMU_CQGR_GEN_BIT(ENABLE))
      | (SMU_CQGR_GEN_BIT(EVENT_ENABLE))
   );

   SMU_CQGR_WRITE(this_controller, completion_queue_get_value);

   this_controller->completion_queue_get = completion_queue_get_value;


   completion_queue_put_value = (
        (SMU_CQPR_GEN_VAL(POINTER, 0))
      | (SMU_CQPR_GEN_VAL(EVENT_POINTER, 0))
   );

   SMU_CQPR_WRITE(this_controller, completion_queue_put_value);


   for (index = 0; index < this_controller->completion_queue_entries; index++)
   {



      this_controller->completion_queue[index] = 0x80000000;
   }
}
