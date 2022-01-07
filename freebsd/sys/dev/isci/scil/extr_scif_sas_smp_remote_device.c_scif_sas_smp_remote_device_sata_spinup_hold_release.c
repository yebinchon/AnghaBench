
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int * controller; } ;
struct TYPE_11__ {int current_activity_phy_index; int current_smp_request; } ;
struct TYPE_12__ {TYPE_1__ smp_device; } ;
struct TYPE_13__ {TYPE_2__ protocol_device; int expander_phy_identifier; TYPE_4__* domain; } ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_4__ SCIF_SAS_DOMAIN_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SMP_FUNCTION_DISCOVER ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int scif_cb_start_internal_io_task_schedule (int *,int ,int *) ;
 int scif_sas_controller_start_high_priority_io ;
 TYPE_3__* scif_sas_domain_find_device_in_spinup_hold (TYPE_4__*) ;
 int scif_sas_smp_remote_device_finish_discover (TYPE_3__*) ;
 int scif_sas_smp_request_construct_discover (int *,TYPE_3__*,int ,int *,int *) ;

void scif_sas_smp_remote_device_sata_spinup_hold_release(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = fw_device->domain;
   SCIF_SAS_CONTROLLER_T * fw_controller = fw_domain->controller;
   SCIF_SAS_REMOTE_DEVICE_T * device_to_poll = ((void*)0);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_sata_spinup_hold_release(0x%x) enter\n",
      fw_device
   ));



   device_to_poll = scif_sas_domain_find_device_in_spinup_hold(fw_domain);

   if (device_to_poll != ((void*)0))
   {

      fw_device->protocol_device.smp_device.current_smp_request =
         SMP_FUNCTION_DISCOVER;

      fw_device->protocol_device.smp_device.current_activity_phy_index =
        device_to_poll->expander_phy_identifier;

      scif_sas_smp_request_construct_discover(
         fw_domain->controller,
         fw_device,
         fw_device->protocol_device.smp_device.current_activity_phy_index,
         ((void*)0), ((void*)0)
      );


      scif_cb_start_internal_io_task_schedule(
         fw_controller, scif_sas_controller_start_high_priority_io, fw_controller
      );
   }
   else
      scif_sas_smp_remote_device_finish_discover (fw_device);
}
