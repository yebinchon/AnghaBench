
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int core_object; } ;
struct TYPE_12__ {int core_object; int parent; TYPE_1__* state_handlers; } ;
struct TYPE_14__ {TYPE_4__ parent; } ;
struct TYPE_13__ {int core_object; TYPE_3__* domain; } ;
struct TYPE_11__ {int parent; TYPE_2__* state_handlers; } ;
struct TYPE_10__ {scalar_t__ (* complete_io_handler ) (int *,int *,int *) ;} ;
struct TYPE_9__ {int (* destruct_handler ) (int *) ;} ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_6__ SCIF_SAS_IO_REQUEST_T ;
typedef TYPE_7__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_LOG_WARNING (int ) ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_7__*) ;
 scalar_t__ scic_controller_complete_io (int ,int ,int ) ;
 int stub1 (int *) ;
 scalar_t__ stub2 (int *,int *,int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_ready_complete_io_handler(
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
   SCI_STATUS status;
   SCI_STATUS core_status;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_controller_ready_complete_io_handler(0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request
   ));

   fw_io->parent.state_handlers->destruct_handler(&fw_io->parent.parent);
   status = fw_device->domain->state_handlers->complete_io_handler(
               &fw_device->domain->parent, remote_device, io_request
            );


   core_status = scic_controller_complete_io(
                    fw_controller->core_object,
                    fw_device->core_object,
                    fw_io->parent.core_object
                 );

   if (status == SCI_SUCCESS)
      status = core_status;

   if (status != SCI_SUCCESS)
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
