
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int state_machine; } ;
struct TYPE_14__ {TYPE_3__ parent; int core_object; } ;
struct TYPE_10__ {scalar_t__ attached_smp_target; } ;
struct TYPE_11__ {TYPE_1__ bits; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
typedef TYPE_4__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ;
 int SCI_BASE_REMOTE_DEVICE_STATE_FINAL ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ scic_remote_device_destruct (int ) ;
 int scic_remote_device_get_protocols (int ,TYPE_4__*) ;
 int scif_sas_remote_device_deinitialize_state_logging (TYPE_5__*) ;
 int scif_sas_smp_remote_device_removed (TYPE_5__*) ;

__attribute__((used)) static
SCI_STATUS scif_sas_remote_device_stopped_destruct_handler(
   SCI_BASE_REMOTE_DEVICE_T * remote_device
)
{
   SCI_STATUS status;
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                                          remote_device;

   SMP_DISCOVER_RESPONSE_PROTOCOLS_T dev_protocols;
   scic_remote_device_get_protocols(fw_device->core_object, &dev_protocols);


   if(dev_protocols.u.bits.attached_smp_target)
      scif_sas_smp_remote_device_removed(fw_device);

   status = scic_remote_device_destruct(fw_device->core_object);
   if (status == SCI_SUCCESS)
   {
      sci_base_state_machine_change_state(
         &fw_device->parent.state_machine, SCI_BASE_REMOTE_DEVICE_STATE_FINAL
      );

      scif_sas_remote_device_deinitialize_state_logging(fw_device);
   }
   else
   {
      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
         "Device:0x%x Status:0x%x failed to destruct core device\n",
         fw_device
      ));
   }

   return status;
}
