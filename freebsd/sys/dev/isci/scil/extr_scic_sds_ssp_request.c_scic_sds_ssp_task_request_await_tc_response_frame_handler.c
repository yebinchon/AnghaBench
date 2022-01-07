
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {int state_machine; } ;
struct TYPE_7__ {TYPE_1__ parent; int * owning_controller; } ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_TASK_MANAGEMENT ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_BASE_REQUEST_STATE_COMPLETED ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_controller_release_frame (int *,int ) ;
 int scic_sds_io_request_copy_response (TYPE_2__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_ssp_task_request_await_tc_response_frame_handler(
   SCIC_SDS_REQUEST_T * this_request,
   U32 frame_index
)
{


   SCIC_SDS_CONTROLLER_T * owning_controller = this_request->owning_controller;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_request),
      SCIC_LOG_OBJECT_TASK_MANAGEMENT,
      "scic_sds_ssp_task_request_await_tc_response_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   scic_sds_io_request_copy_response(this_request);

   sci_base_state_machine_change_state(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_COMPLETED
   );

   scic_sds_controller_release_frame(
      owning_controller, frame_index
   );

   return SCI_SUCCESS;
}
