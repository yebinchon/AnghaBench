
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* domain; int ready_substate_machine; int request_count; } ;
struct TYPE_9__ {scalar_t__ is_internal; int core_object; } ;
struct TYPE_8__ {int controller; } ;
typedef int SCI_STATUS ;
typedef int SCI_IO_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIF_SAS_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_INTERNAL_IO_REQUEST_T ;
typedef scalar_t__ SCIC_TRANSPORT_PROTOCOL ;


 scalar_t__ SCIC_SMP_PROTOCOL ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL ;
 int SCI_IO_FAILURE_TERMINATED ;
 int SCI_SUCCESS ;
 scalar_t__ TRUE ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ scic_io_request_get_protocol (int ) ;
 int scif_sas_internal_io_request_complete (int ,int *,int ) ;
 int scif_sas_smp_remote_device_decode_smp_response (TYPE_3__*,TYPE_2__*,void*,int ) ;
 int scif_sas_smp_remote_device_terminated_request_handler (TYPE_3__*,TYPE_2__*) ;

SCI_STATUS
scif_sas_remote_device_ready_task_management_complete_high_priority_io_handler(
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * io_request,
   void * response_data,
   SCI_IO_STATUS completion_status
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                           remote_device;
   SCIF_SAS_REQUEST_T * fw_request = (SCIF_SAS_REQUEST_T*) io_request;
   SCI_STATUS status = SCI_SUCCESS;
   SCIC_TRANSPORT_PROTOCOL protocol;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(remote_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_remote_device_ready_task_management_complete_high_priority_io_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      remote_device, io_request, response_data, completion_status
   ));

   fw_device->request_count--;


   sci_base_state_machine_change_state(
      &fw_device->ready_substate_machine,
      SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL
   );

   protocol = scic_io_request_get_protocol(fw_request->core_object);



   if (protocol == SCIC_SMP_PROTOCOL)
   {
      if (completion_status != SCI_IO_FAILURE_TERMINATED)
      {
         status = scif_sas_smp_remote_device_decode_smp_response(
                     fw_device, fw_request, response_data, completion_status
                  );
      }
      else
         scif_sas_smp_remote_device_terminated_request_handler(fw_device, fw_request);
   }
   else
   {


      if (fw_request->is_internal == TRUE)
      {
         scif_sas_internal_io_request_complete(
            fw_device->domain->controller,
            (SCIF_SAS_INTERNAL_IO_REQUEST_T *)fw_request,
            SCI_SUCCESS
         );
      }
   }

   return status;
}
