
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_13__ {int * controller; } ;
struct TYPE_10__ {scalar_t__ current_smp_request; int * smp_activity_timer; int current_activity_phy_index; } ;
struct TYPE_11__ {TYPE_1__ smp_device; } ;
struct TYPE_12__ {TYPE_2__ protocol_device; int core_object; TYPE_7__* domain; } ;
typedef int SCI_TIMER_CALLBACK_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int SCIF_SAS_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int ASSERT (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_SUCCESS ;
 scalar_t__ SMP_FUNCTION_DISCOVER ;
 scalar_t__ SMP_FUNCTION_PHY_CONTROL ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int scic_remote_device_get_suggested_reset_timeout (int ) ;
 int * scif_cb_timer_create (int *,int ,void*) ;
 int scif_cb_timer_start (int ,int *,int) ;
 TYPE_3__* scif_sas_domain_get_device_by_containing_device (TYPE_7__*,TYPE_3__*,int ) ;
 int scif_sas_remote_device_target_reset_complete (TYPE_3__*,int *,int ) ;
 scalar_t__ scif_sas_smp_remote_device_target_reset_poll ;

void scif_sas_smp_remote_device_continue_target_reset(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T * fw_request
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = fw_device->domain->controller;
   SCIF_SAS_REMOTE_DEVICE_T * target_device =
      scif_sas_domain_get_device_by_containing_device(
         fw_device->domain,
         fw_device,
         fw_device->protocol_device.smp_device.current_activity_phy_index
      );

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_continue_target_reset(0x%x, 0x%x) enter\n",
      fw_device, fw_request
   ));

   if (fw_device->protocol_device.smp_device.current_smp_request ==
          SMP_FUNCTION_PHY_CONTROL)
   {



      U32 delay =
         (scic_remote_device_get_suggested_reset_timeout(target_device->core_object)/8);



      if (fw_device->protocol_device.smp_device.smp_activity_timer == ((void*)0))
      {
         fw_device->protocol_device.smp_device.smp_activity_timer =
            scif_cb_timer_create(
               (SCI_CONTROLLER_HANDLE_T *)fw_controller,
               (SCI_TIMER_CALLBACK_T)scif_sas_smp_remote_device_target_reset_poll,
               (void*)fw_request
            );
      }
      else
      {
         ASSERT(0);
      }


      scif_cb_timer_start(
         (SCI_CONTROLLER_HANDLE_T)fw_controller,
         fw_device->protocol_device.smp_device.smp_activity_timer,
         delay
      );
   }
   else if (fw_device->protocol_device.smp_device.current_smp_request ==
          SMP_FUNCTION_DISCOVER)
   {

      scif_sas_remote_device_target_reset_complete(
         target_device, fw_request, SCI_SUCCESS);
   }
}
