
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
struct TYPE_5__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_COMPLETED ;
 int SCI_FAILURE_IO_TERMINATED ;
 int SCI_SUCCESS ;
 int SCU_TASK_DONE_TASK_ABORT ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_request_set_status (TYPE_2__*,int ,int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_request_constructed_state_abort_handler(
   SCI_BASE_REQUEST_T *request
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)request;



   scic_sds_request_set_status(
      this_request,
      SCU_TASK_DONE_TASK_ABORT,
      SCI_FAILURE_IO_TERMINATED
   );

   sci_base_state_machine_change_state(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_COMPLETED
   );

   return SCI_SUCCESS;
}
