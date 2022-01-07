
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ is_task_management_request; int sci_status; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;


 scalar_t__ FALSE ;
 int SCI_BASE_REQUEST_STATE_COMPLETED ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 int scic_cb_io_request_complete (int ,int ,TYPE_1__*,int ) ;
 int scic_cb_task_request_complete (int ,int ,TYPE_1__*,int ) ;
 int scic_sds_request_get_controller (TYPE_1__*) ;
 int scic_sds_request_get_device (TYPE_1__*) ;
 int scic_sds_request_state_handler_table ;

__attribute__((used)) static
void scic_sds_request_completed_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)object;

   SET_STATE_HANDLER(
      this_request,
      scic_sds_request_state_handler_table,
      SCI_BASE_REQUEST_STATE_COMPLETED
   );


   if (this_request->is_task_management_request == FALSE)
   {
      scic_cb_io_request_complete(
         scic_sds_request_get_controller(this_request),
         scic_sds_request_get_device(this_request),
         this_request,
         this_request->sci_status
      );
   }
   else
   {
      scic_cb_task_request_complete(
         scic_sds_request_get_controller(this_request),
         scic_sds_request_get_device(this_request),
         this_request,
         this_request->sci_status
      );
   }
}
