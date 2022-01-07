
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_3__ {int ready_substate_machine; } ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;


 scalar_t__ SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED ;
 int SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR ;
 int SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_SUSPENDED ;
 int sci_base_state_machine_change_state (int *,int ) ;

__attribute__((used)) static
void scif_sas_remote_device_ready_operational_not_ready_handler(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   U32 reason_code
)
{
   if (reason_code == SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED)
   {
      sci_base_state_machine_change_state(
         &fw_device->ready_substate_machine,
         SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR
      );
   }
   else
   {



      sci_base_state_machine_change_state(
         &fw_device->ready_substate_machine,
         SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_SUSPENDED
      );
   }
}
