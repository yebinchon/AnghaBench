
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ready_substate_machine; } ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL ;
 int sci_base_state_machine_change_state (int *,int ) ;

__attribute__((used)) static
void scif_sas_remote_device_ready_suspended_ready_handler(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   sci_base_state_machine_change_state(
      &fw_device->ready_substate_machine,
      SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL
   );
}
