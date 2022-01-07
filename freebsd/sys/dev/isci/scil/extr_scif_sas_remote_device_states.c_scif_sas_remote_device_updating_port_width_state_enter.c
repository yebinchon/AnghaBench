
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ request_count; int core_object; int destination_state; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT ;
 int SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_READY ;
 int SCI_BASE_REMOTE_DEVICE_STATE_UPDATING_PORT_WIDTH ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 int scic_remote_device_stop (int ,int ) ;
 int scif_sas_remote_device_state_handler_table ;

__attribute__((used)) static
void scif_sas_remote_device_updating_port_width_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      fw_device,
      scif_sas_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_UPDATING_PORT_WIDTH
   );

   fw_device->destination_state = SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_READY;




   if (fw_device->request_count == 0)
   {


      scic_remote_device_stop(
         fw_device->core_object, SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT);
   }
}
