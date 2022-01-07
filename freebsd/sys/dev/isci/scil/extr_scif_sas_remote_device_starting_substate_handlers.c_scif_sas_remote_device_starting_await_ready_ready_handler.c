
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state_machine; } ;
struct TYPE_6__ {scalar_t__ destination_state; int domain; TYPE_1__ parent; } ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;


 scalar_t__ SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UPDATING_PORT_WIDTH ;
 int SCI_BASE_REMOTE_DEVICE_STATE_READY ;
 int SCI_BASE_REMOTE_DEVICE_STATE_UPDATING_PORT_WIDTH ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scif_sas_domain_remote_device_start_complete (int ,TYPE_2__*) ;

__attribute__((used)) static
void scif_sas_remote_device_starting_await_ready_ready_handler(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{

   if (fw_device->destination_state ==
          SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UPDATING_PORT_WIDTH)
   {
      {
         sci_base_state_machine_change_state(
            &fw_device->parent.state_machine,
            SCI_BASE_REMOTE_DEVICE_STATE_UPDATING_PORT_WIDTH
         );
      }
   }
   else

   {
      sci_base_state_machine_change_state(
         &fw_device->parent.state_machine, SCI_BASE_REMOTE_DEVICE_STATE_READY
      );
   }


   scif_sas_domain_remote_device_start_complete(fw_device->domain,fw_device);

}
