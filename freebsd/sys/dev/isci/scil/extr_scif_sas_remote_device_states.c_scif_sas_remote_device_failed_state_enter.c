
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int controller; } ;
struct TYPE_10__ {scalar_t__ previous_state_id; } ;
struct TYPE_11__ {TYPE_1__ state_machine; } ;
struct TYPE_12__ {TYPE_4__* domain; TYPE_2__ parent; int operation_status; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ;
 int SCI_BASE_REMOTE_DEVICE_STATE_FAILED ;
 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_STARTING ;
 int SET_STATE_HANDLER (TYPE_3__*,int ,int ) ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int scif_cb_remote_device_failed (int ,TYPE_4__*,TYPE_3__*,int ) ;
 int scif_sas_domain_remote_device_start_complete (TYPE_4__*,TYPE_3__*) ;
 int scif_sas_remote_device_state_handler_table ;

__attribute__((used)) static
void scif_sas_remote_device_failed_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      fw_device,
      scif_sas_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_FAILED
   );

   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
      "Domain:0x%x Device:0x%x Status:0x%x device failed\n",
      fw_device->domain, fw_device, fw_device->operation_status
   ));


   scif_cb_remote_device_failed(
      fw_device->domain->controller,
      fw_device->domain,
      fw_device,
      fw_device->operation_status
   );



   if (fw_device->parent.state_machine.previous_state_id
       == SCI_BASE_REMOTE_DEVICE_STATE_STARTING)
      scif_sas_domain_remote_device_start_complete(fw_device->domain,fw_device);
}
