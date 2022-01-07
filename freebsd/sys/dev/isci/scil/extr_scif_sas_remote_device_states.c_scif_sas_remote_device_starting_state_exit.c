
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int starting_substate_machine; int destination_state; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UNSPECIFIED ;
 int sci_base_state_machine_stop (int *) ;

__attribute__((used)) static
void scif_sas_remote_device_starting_state_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   fw_device->destination_state =
      SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UNSPECIFIED;


   sci_base_state_machine_stop(&fw_device->starting_substate_machine);
}
