
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int controller; } ;
struct TYPE_12__ {int current_smp_request; int current_activity_phy_index; int number_of_phys; } ;
struct TYPE_13__ {TYPE_1__ smp_device; } ;
struct TYPE_14__ {TYPE_2__ protocol_device; TYPE_4__* domain; } ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_4__ SCIF_SAS_DOMAIN_T ;


 int PHY_OPERATION_HARD_RESET ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;





 int sci_base_object_get_logger (TYPE_3__*) ;
 int scif_sas_smp_remote_device_finish_initial_discover (TYPE_3__*) ;
 int scif_sas_smp_request_construct_discover (int ,TYPE_3__*,int ,int *,int *) ;
 int scif_sas_smp_request_construct_phy_control (int ,TYPE_3__*,int ,int ,int *,int *) ;
 int scif_sas_smp_request_construct_report_manufacturer_info (int ,TYPE_3__*) ;
 int scif_sas_smp_request_construct_report_phy_sata (int ,TYPE_3__*,int ) ;

void scif_sas_smp_remote_device_continue_discover(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = fw_device->domain;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_continue_discover(0x%x) enter\n",
      fw_device
   ));

   switch (fw_device->protocol_device.smp_device.current_smp_request)
   {
      case 130:

         fw_device->protocol_device.smp_device.current_smp_request =
            129;

         scif_sas_smp_request_construct_report_manufacturer_info(
            fw_domain->controller, fw_device
         );

         break;

      case 129:

         fw_device->protocol_device.smp_device.current_activity_phy_index = 0;
         fw_device->protocol_device.smp_device.current_smp_request =
            132;

         scif_sas_smp_request_construct_discover(
            fw_domain->controller,
            fw_device,
            fw_device->protocol_device.smp_device.current_activity_phy_index,
            ((void*)0), ((void*)0)
         );
         break;


      case 132:
         fw_device->protocol_device.smp_device.current_activity_phy_index++;

         if ( (fw_device->protocol_device.smp_device.current_activity_phy_index <
                  fw_device->protocol_device.smp_device.number_of_phys) )
         {
            scif_sas_smp_request_construct_discover(
               fw_domain->controller,
               fw_device,
               fw_device->protocol_device.smp_device.current_activity_phy_index,
               ((void*)0), ((void*)0)
            );
         }
         else
            scif_sas_smp_remote_device_finish_initial_discover(fw_device);
         break;


      case 128:
         scif_sas_smp_request_construct_report_phy_sata(
            fw_device->domain->controller,
            fw_device,
            fw_device->protocol_device.smp_device.current_activity_phy_index
         );

         break;


      case 131:
         scif_sas_smp_request_construct_phy_control(
            fw_device->domain->controller,
            fw_device,
            PHY_OPERATION_HARD_RESET,
            fw_device->protocol_device.smp_device.current_activity_phy_index,
            ((void*)0),
            ((void*)0)
         );

         break;

      default:
         break;
   }
}
