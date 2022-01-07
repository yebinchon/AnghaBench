
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ (* protocol_complete_handler ) (int *,int *,TYPE_2__*,scalar_t__*) ;scalar_t__ is_high_priority; scalar_t__ is_waiting_for_abort_task_set; int parent; TYPE_1__* state_handlers; } ;
struct TYPE_7__ {scalar_t__ (* complete_handler ) (int *) ;} ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_IO_STATUS ;
typedef int SCI_IO_REQUEST_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_2__ SCIF_SAS_REQUEST_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 scalar_t__ FALSE ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_SUCCESS ;
 scalar_t__ SCI_WARNING_SEQUENCE_INCOMPLETE ;
 int sci_base_object_get_logger (int ) ;
 scalar_t__ sci_object_get_association (int ) ;
 int scif_cb_io_request_complete (int *,int *,TYPE_2__*,int ) ;
 int scif_sas_controller_complete_high_priority_io (int *,int *,TYPE_2__*) ;
 int scif_sas_io_request_continue (int *,int *,TYPE_2__*) ;
 scalar_t__ stub1 (int *) ;
 scalar_t__ stub2 (int *,int *,TYPE_2__*,scalar_t__*) ;

void scic_cb_io_request_complete(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_IO_REQUEST_HANDLE_T io_request,
   SCI_IO_STATUS completion_status
)
{
   SCI_STATUS status;
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T*)
                                      sci_object_get_association(controller);
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                      sci_object_get_association(remote_device);
   SCIF_SAS_REQUEST_T * fw_request = (SCIF_SAS_REQUEST_T*)
                                      sci_object_get_association(io_request);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scic_cb_io_request_complete(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request, completion_status
   ));




   status = fw_request->state_handlers->complete_handler(&fw_request->parent);



   if (status == SCI_SUCCESS)
   {
      if (fw_request->protocol_complete_handler != ((void*)0))
      {
         status = fw_request->protocol_complete_handler(
                     fw_controller, fw_device, fw_request, (SCI_STATUS *)&completion_status
                  );
      }



      if ( status == SCI_SUCCESS )
      {
         if (fw_request->is_high_priority == FALSE)
         {
            if (fw_request->is_waiting_for_abort_task_set == FALSE)
            {
               scif_cb_io_request_complete(
                  fw_controller, fw_device, fw_request, completion_status);
            }
            else
            {


            }
         }
         else
            scif_sas_controller_complete_high_priority_io(
               fw_controller, fw_device, fw_request);
      }
      else if ( status == SCI_WARNING_SEQUENCE_INCOMPLETE )
      {
         scif_sas_io_request_continue(fw_controller, fw_device, fw_request);
      }
   }
}
