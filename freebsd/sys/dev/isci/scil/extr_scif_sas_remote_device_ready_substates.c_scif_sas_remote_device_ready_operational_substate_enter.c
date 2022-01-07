
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int controller; } ;
struct TYPE_6__ {TYPE_2__* domain; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ;
 int SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scif_cb_remote_device_ready (int ,TYPE_2__*,TYPE_1__*) ;
 int scif_sas_remote_device_ready_substate_handler_table ;

__attribute__((used)) static
void scif_sas_remote_device_ready_operational_substate_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      fw_device,
      scif_sas_remote_device_ready_substate_handler_table,
      SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL
   );

   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
      "Domain:0x%x Device:0x%x device ready\n",
      fw_device->domain, fw_device
   ));


   scif_cb_remote_device_ready(
      fw_device->domain->controller, fw_device->domain, fw_device
   );
}
