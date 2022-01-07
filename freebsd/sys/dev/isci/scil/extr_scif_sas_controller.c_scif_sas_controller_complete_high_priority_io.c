
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* state_handlers; } ;
struct TYPE_5__ {int (* complete_high_priority_io_handler ) (int *,int *,int *) ;} ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef int SCIF_SAS_REQUEST_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int stub1 (int *,int *,int *) ;

SCI_STATUS scif_sas_controller_complete_high_priority_io(
   SCIF_SAS_CONTROLLER_T *fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T *remote_device,
   SCIF_SAS_REQUEST_T *io_request
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_controller_complete_high_priority_io(0x%x, 0x%x, 0x%x) enter\n",
      fw_controller, remote_device, io_request
   ));


   return fw_controller->state_handlers->complete_high_priority_io_handler(
             (SCI_BASE_CONTROLLER_T*) fw_controller,
             (SCI_BASE_REMOTE_DEVICE_T*) remote_device,
             (SCI_BASE_REQUEST_T*) io_request
          );
}
