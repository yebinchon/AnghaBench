
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int current_activity_phy_index; } ;
struct TYPE_10__ {TYPE_1__ smp_device; } ;
struct TYPE_11__ {TYPE_2__ protocol_device; int domain; } ;
typedef int SCIF_SAS_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 TYPE_3__* scif_sas_domain_get_device_by_containing_device (int ,TYPE_3__*,int ) ;
 int scif_sas_remote_device_target_reset_complete (TYPE_3__*,int *,int ) ;

void scif_sas_smp_remote_device_fail_target_reset(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T * fw_request
)
{
   SCIF_SAS_REMOTE_DEVICE_T * target_device =
      scif_sas_domain_get_device_by_containing_device(
         fw_device->domain,
         fw_device,
         fw_device->protocol_device.smp_device.current_activity_phy_index
      );

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_fail_target_reset(0x%x, 0x%x, 0x%x) enter\n",
      fw_device, target_device, fw_request
   ));


   scif_sas_remote_device_target_reset_complete(
      target_device, fw_request, SCI_FAILURE);
}
