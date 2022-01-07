
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int current_smp_request; } ;
struct TYPE_9__ {TYPE_1__ smp_device; } ;
struct TYPE_10__ {TYPE_2__ protocol_device; } ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;




 int sci_base_object_get_logger (TYPE_3__*) ;
 int scif_sas_smp_remote_device_continue_discover (TYPE_3__*) ;
 int scif_sas_smp_remote_device_finish_discover (TYPE_3__*) ;

void scif_sas_smp_remote_device_fail_discover(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_fail_discover(0x%x) enter\n",
      fw_device
   ));

   switch (fw_device->protocol_device.smp_device.current_smp_request)
   {
      case 130:
      case 129:
         scif_sas_smp_remote_device_finish_discover(fw_device);
         break;

      case 131:
      case 128:

         fw_device->protocol_device.smp_device.current_smp_request =
            131;

         scif_sas_smp_remote_device_continue_discover(fw_device);
         break;

      default:
         break;
   }
}
