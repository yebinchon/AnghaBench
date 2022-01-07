
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int controller; } ;
struct TYPE_9__ {TYPE_2__* domain; } ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scif_cb_domain_device_removed (int ,TYPE_2__*,TYPE_1__*) ;
 int scif_sas_smp_remote_device_sata_spinup_hold_release (TYPE_1__*) ;

void scif_sas_smp_remote_device_fail_target_spinup_hold_release(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REMOTE_DEVICE_T * target_device
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = fw_device->domain;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_fail_target_spinup_hold_release(0x%x, 0x%x) enter\n",
      fw_device, target_device
   ));



   scif_cb_domain_device_removed(
      fw_domain->controller, fw_domain, target_device
   );


   scif_sas_smp_remote_device_sata_spinup_hold_release(fw_device);
}
