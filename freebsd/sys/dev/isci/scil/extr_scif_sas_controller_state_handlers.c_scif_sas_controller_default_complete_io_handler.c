
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
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_get_state (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_default_complete_io_handler(
   SCI_BASE_CONTROLLER_T * controller,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * io_request
)
{
   SCIF_LOG_WARNING((
      sci_base_object_get_logger((SCIF_SAS_CONTROLLER_T *)controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "Controller:0x%x State:0x%x invalid state to complete IO.\n",
      controller,
      sci_base_state_machine_get_state(
         &((SCIF_SAS_CONTROLLER_T *)controller)->parent.state_machine)
   ));

   return SCI_FAILURE_INVALID_STATE;
}
