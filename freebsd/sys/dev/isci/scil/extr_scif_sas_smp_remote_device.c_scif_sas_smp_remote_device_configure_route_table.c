
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int curr_config_route_index; int current_activity_phy_index; TYPE_4__* curr_config_route_destination_smp_phy; int current_activity; } ;
struct TYPE_11__ {TYPE_3__ smp_device; } ;
struct TYPE_15__ {TYPE_2__* domain; TYPE_1__ protocol_device; } ;
struct TYPE_14__ {int attached_sas_address; int list_element; } ;
struct TYPE_12__ {int controller; } ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef TYPE_3__ SCIF_SAS_SMP_REMOTE_DEVICE_T ;
typedef TYPE_4__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;


 int FALSE ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE ;
 scalar_t__ TRUE ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 int scif_cb_start_internal_io_task_schedule (int ,int ,int ) ;
 int scif_sas_controller_start_high_priority_io ;
 scalar_t__ scif_sas_smp_remote_device_do_config_route_info (TYPE_5__*,TYPE_4__*) ;
 int scif_sas_smp_request_construct_config_route_info (int ,TYPE_5__*,int ,int ,int ,int ) ;

void scif_sas_smp_remote_device_configure_route_table(
   SCIF_SAS_REMOTE_DEVICE_T * device_being_config
)
{

   SCI_FAST_LIST_ELEMENT_T * element =
      &(device_being_config->protocol_device.smp_device.curr_config_route_destination_smp_phy->list_element);
   SCIF_SAS_SMP_PHY_T * curr_smp_phy = ((void*)0);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(device_being_config),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_configure_route_table(0x%x) enter\n",
      device_being_config
   ));

   device_being_config->protocol_device.smp_device.current_activity =
      SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE;

   while (element != ((void*)0))
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) sci_fast_list_get_object(element);
      element = sci_fast_list_get_next(element);


      if (scif_sas_smp_remote_device_do_config_route_info(
             device_being_config, curr_smp_phy) == TRUE )
      {
         SCIF_SAS_SMP_REMOTE_DEVICE_T * smp_remote_device =
            &device_being_config->protocol_device.smp_device;

         smp_remote_device->curr_config_route_destination_smp_phy =
            curr_smp_phy;



         scif_sas_smp_request_construct_config_route_info(
            device_being_config->domain->controller,
            device_being_config,
            smp_remote_device->current_activity_phy_index,
            smp_remote_device->curr_config_route_index,
            curr_smp_phy->attached_sas_address,
            FALSE
         );


         scif_cb_start_internal_io_task_schedule(
            device_being_config->domain->controller,
            scif_sas_controller_start_high_priority_io,
            device_being_config->domain->controller
         );



         break;
      }
   }
}
