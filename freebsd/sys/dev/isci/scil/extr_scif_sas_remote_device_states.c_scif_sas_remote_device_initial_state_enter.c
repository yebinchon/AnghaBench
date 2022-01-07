
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
struct TYPE_5__ {TYPE_1__ parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCI_BASE_REMOTE_DEVICE_STATE_INITIAL ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ;
 int SET_STATE_HANDLER (TYPE_2__*,int ,int ) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scif_sas_remote_device_state_handler_table ;

__attribute__((used)) static
void scif_sas_remote_device_initial_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      fw_device,
      scif_sas_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_INITIAL
   );


   sci_base_state_machine_change_state(
      &fw_device->parent.state_machine,
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
   );
}
