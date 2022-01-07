
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_16__ {int pool; } ;
struct TYPE_19__ {TYPE_5__ hprq; int core_object; } ;
struct TYPE_13__ {int parent; TYPE_1__* state_handlers; int core_object; } ;
struct TYPE_18__ {TYPE_2__ parent; } ;
struct TYPE_17__ {TYPE_4__* domain; int core_object; } ;
struct TYPE_15__ {int parent; TYPE_3__* state_handlers; } ;
struct TYPE_14__ {scalar_t__ (* complete_high_priority_io_handler ) (int *,int *,int *,void*,int ) ;} ;
struct TYPE_12__ {int (* destruct_handler ) (int *) ;} ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_IO_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_6__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_7__ SCIF_SAS_IO_REQUEST_T ;
typedef TYPE_8__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_LOG_WARNING (int ) ;
 int SCIF_SAS_RESPONSE_DATA_LENGTH ;
 scalar_t__ SCI_SUCCESS ;
 int memcpy (int *,int ,int) ;
 int sci_base_object_get_logger (TYPE_8__*) ;
 int sci_pool_empty (int ) ;
 scalar_t__ scic_controller_complete_io (int ,int ,int ) ;
 int scic_io_request_get_response_iu_address (int ) ;
 int scic_request_get_sci_status (int ) ;
 int scif_cb_start_internal_io_task_schedule (TYPE_8__*,int ,TYPE_8__*) ;
 int scif_sas_controller_start_high_priority_io ;
 int stub1 (int *) ;
 scalar_t__ stub2 (int *,int *,int *,void*,int ) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_ready_complete_high_priority_io_handler(
   SCI_BASE_CONTROLLER_T * controller,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * io_request
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T*)
                                              controller;
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                              remote_device;
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T*)
                                              io_request;
   SCI_IO_STATUS core_completion_status =
                    scic_request_get_sci_status(fw_io->parent.core_object);

   U8 response_data[SCIF_SAS_RESPONSE_DATA_LENGTH];

   SCI_STATUS status;
   SCI_STATUS core_status;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_controller_ready_complete_high_priority_io_handler(0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request
   ));




   memcpy(response_data,
          scic_io_request_get_response_iu_address(fw_io->parent.core_object),
          SCIF_SAS_RESPONSE_DATA_LENGTH
         );

   core_status = scic_controller_complete_io(
                    fw_controller->core_object,
                    fw_device->core_object,
                    fw_io->parent.core_object
                 );

   fw_io->parent.state_handlers->destruct_handler(&fw_io->parent.parent);
   status = fw_device->domain->state_handlers->complete_high_priority_io_handler(
               &fw_device->domain->parent,
               remote_device,
               io_request,
               (void *)response_data,
               core_completion_status
            );

   if (status == SCI_SUCCESS)
      status = core_status;

   if (status == SCI_SUCCESS)
   {

      if( !sci_pool_empty(fw_controller->hprq.pool) )
         scif_cb_start_internal_io_task_schedule(
            fw_controller,
            scif_sas_controller_start_high_priority_io,
            fw_controller
         );
   }
   else
   {
      SCIF_LOG_WARNING((
         sci_base_object_get_logger(fw_controller),
         SCIF_LOG_OBJECT_CONTROLLER,
         "Controller:0x%x IORequest:0x%x Status:0x%x CoreStatus:0x%x "
         "failure to complete IO\n",
         fw_controller, fw_io, status, core_status
      ));
   }

   return status;
}
