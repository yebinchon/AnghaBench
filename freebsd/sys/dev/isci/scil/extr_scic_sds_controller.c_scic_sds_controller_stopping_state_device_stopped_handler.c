
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state_machine; } ;
struct TYPE_6__ {TYPE_1__ parent; } ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 int SCI_BASE_CONTROLLER_STATE_STOPPED ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_controller_has_remote_devices_stopping (TYPE_2__*) ;

__attribute__((used)) static
void scic_sds_controller_stopping_state_device_stopped_handler(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_REMOTE_DEVICE_T * remote_device
)
{
   if (!scic_sds_controller_has_remote_devices_stopping(controller))
   {
      sci_base_state_machine_change_state(
         &controller->parent.state_machine,
         SCI_BASE_CONTROLLER_STATE_STOPPED
      );
   }
}
