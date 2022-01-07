
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ current_state_id; } ;
struct TYPE_16__ {TYPE_1__ state_machine; } ;
struct TYPE_18__ {int controller; TYPE_2__ parent; } ;
struct TYPE_17__ {TYPE_8__* domain; struct TYPE_17__* containing_device; int * ea_target_reset_request_scheduled; int core_object; } ;
typedef int SCI_TASK_STATUS ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCIF_SAS_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 scalar_t__ SCI_BASE_DOMAIN_STATE_DISCOVERING ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int scic_remote_device_reset_complete (int ) ;
 int scif_cb_domain_change_notification (int ,TYPE_8__*) ;
 int scif_cb_task_request_complete (int ,TYPE_3__*,int *,int ) ;
 TYPE_3__* scif_sas_domain_find_next_ea_target_reset (TYPE_8__*) ;
 int scif_sas_domain_start_smp_discover (TYPE_8__*,TYPE_3__*) ;
 int scif_sas_smp_remote_device_clear (TYPE_3__*) ;
 int scif_sas_smp_remote_device_start_target_reset (TYPE_3__*,TYPE_3__*,int *) ;

void scif_sas_remote_device_target_reset_complete(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T * fw_request,
   SCI_STATUS completion_status
)
{
   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "scif_sas_remote_device_target_reset_complete! "
      "fw_device:0x%x fw_request:0x%x completion_status 0x%x\n",
      fw_device, fw_request, completion_status
   ));

   scif_cb_task_request_complete(
      fw_device->domain->controller,
      fw_device,
      fw_request,
      (SCI_TASK_STATUS) completion_status
   );

   scic_remote_device_reset_complete(fw_device->core_object);


   if (fw_device->containing_device != ((void*)0))
   {


      SCIF_SAS_REMOTE_DEVICE_T * next_device;

      scif_sas_smp_remote_device_clear(fw_device->containing_device);

      if( (next_device = scif_sas_domain_find_next_ea_target_reset(fw_device->domain))
              != ((void*)0) )
      {
         scif_sas_smp_remote_device_start_target_reset(
            next_device->containing_device,
            next_device,
            next_device->ea_target_reset_request_scheduled
         );

         next_device->ea_target_reset_request_scheduled = ((void*)0);
      }
      else
      {

         if (fw_device->domain->parent.state_machine.current_state_id ==
                SCI_BASE_DOMAIN_STATE_DISCOVERING)
         {
            SCIF_SAS_REMOTE_DEVICE_T * top_expander = fw_device->containing_device;

            while(top_expander->containing_device != ((void*)0))
               top_expander = top_expander->containing_device;

            scif_sas_domain_start_smp_discover(fw_device->domain, top_expander);
         }
         else
         {


            scif_cb_domain_change_notification(
            fw_device->domain->controller, fw_device->domain );
         }
      }
   }
   else
   {


      scif_cb_domain_change_notification(
         fw_device->domain->controller, fw_device->domain );
   }
}
