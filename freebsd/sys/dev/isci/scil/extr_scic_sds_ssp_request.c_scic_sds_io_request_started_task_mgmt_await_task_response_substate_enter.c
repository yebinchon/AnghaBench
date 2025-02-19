
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_REQUEST_T ;


 int SCIC_SDS_IO_REQUEST_STARTED_TASK_MGMT_SUBSTATE_AWAIT_TC_RESPONSE ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scic_sds_ssp_task_request_started_substate_handler_table ;

__attribute__((used)) static
void scic_sds_io_request_started_task_mgmt_await_task_response_substate_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)object;

   SET_STATE_HANDLER(
      this_request,
      scic_sds_ssp_task_request_started_substate_handler_table,
      SCIC_SDS_IO_REQUEST_STARTED_TASK_MGMT_SUBSTATE_AWAIT_TC_RESPONSE
   );
}
