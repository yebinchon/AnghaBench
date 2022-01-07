
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int U16 ;
struct TYPE_21__ {int core_object; } ;
struct TYPE_17__ {TYPE_3__* state_handlers; int core_object; } ;
struct TYPE_20__ {TYPE_4__ parent; } ;
struct TYPE_19__ {TYPE_2__* domain; int core_object; } ;
struct TYPE_18__ {int state_machine; } ;
struct TYPE_16__ {int (* complete_handler ) (TYPE_5__*) ;} ;
struct TYPE_15__ {int parent; TYPE_1__* state_handlers; } ;
struct TYPE_14__ {scalar_t__ (* start_io_handler ) (int *,int *,TYPE_5__*) ;int (* complete_io_handler ) (int *,int *,TYPE_5__*) ;} ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_5__ SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_6__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_7__ SCIF_SAS_IO_REQUEST_T ;
typedef TYPE_8__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_LOG_WARNING (int ) ;
 int SCI_BASE_REQUEST_STATE_STARTED ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_8__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ scic_controller_start_io (int ,int ,int ,int ) ;
 scalar_t__ stub1 (int *,int *,TYPE_5__*) ;
 int stub2 (int *,int *,TYPE_5__*) ;
 int stub3 (TYPE_5__*) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_ready_start_io_handler(
   SCI_BASE_CONTROLLER_T * controller,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * io_request,
   U16 io_tag
)
{
   SCI_STATUS status;
   SCIF_SAS_IO_REQUEST_T *fw_io = (SCIF_SAS_IO_REQUEST_T*)io_request;
   SCIF_SAS_CONTROLLER_T *fw_controller = (SCIF_SAS_CONTROLLER_T*)controller;
   SCIF_SAS_REMOTE_DEVICE_T *fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                             remote_device;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_controller_ready_start_io_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request, io_tag
   ));

   status = fw_device->domain->state_handlers->start_io_handler(
               &fw_device->domain->parent, remote_device, io_request
            );



   if (status == SCI_SUCCESS)
   {

      status = (SCI_STATUS)scic_controller_start_io(
                  fw_controller->core_object,
                  fw_device->core_object,
                  fw_io->parent.core_object,
                  io_tag
               );

      if (status == SCI_SUCCESS)
      {



         sci_base_state_machine_change_state(
            &io_request->state_machine, SCI_BASE_REQUEST_STATE_STARTED
         );
      }
      else
      {




         fw_device->domain->state_handlers->complete_io_handler(
            &fw_device->domain->parent, remote_device, io_request
         );




         fw_io->parent.state_handlers->complete_handler(io_request);

         SCIF_LOG_WARNING((
            sci_base_object_get_logger(fw_controller),
            SCIF_LOG_OBJECT_CONTROLLER,
            "Controller:0x%x IORequest:0x%x Status:0x%x core IO start failed\n",
            fw_controller, fw_io, status
         ));
      }
   }
   else
   {
      SCIF_LOG_WARNING((
         sci_base_object_get_logger(fw_controller),
         SCIF_LOG_OBJECT_CONTROLLER,
         "Controller:0x%x IORequest:0x%x Status:0x%x IO start failed\n",
         fw_controller, fw_io, status
      ));
   }

   return status;
}
