
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int current_smp_request; int current_activity; int * smp_activity_timer; } ;
struct TYPE_17__ {TYPE_2__ smp_device; } ;
struct TYPE_18__ {TYPE_3__ protocol_device; TYPE_1__* domain; } ;
struct TYPE_15__ {int controller; } ;
typedef int SMP_RESPONSE_T ;
typedef scalar_t__ SCI_STATUS ;
typedef scalar_t__ SCI_IO_STATUS ;
typedef int SCIF_SAS_REQUEST_T ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;


 int ASSERT (int ) ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_SATA_SPINUP_HOLD_RELEASE ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET ;
 scalar_t__ SCI_FAILURE_RETRY_REQUIRED ;
 scalar_t__ SCI_FAILURE_UNSUPPORTED_INFORMATION_TYPE ;
 scalar_t__ SCI_SUCCESS ;






 int scif_cb_timer_destroy (int ,int *) ;
 int scif_sas_smp_remote_device_continue_current_activity (TYPE_4__*,int *,scalar_t__) ;
 scalar_t__ scif_sas_smp_remote_device_decode_config_route_info_response (TYPE_4__*,int *) ;
 scalar_t__ scif_sas_smp_remote_device_decode_discover_phy_control_response (TYPE_4__*,int *) ;
 scalar_t__ scif_sas_smp_remote_device_decode_initial_discover_response (TYPE_4__*,int *) ;
 scalar_t__ scif_sas_smp_remote_device_decode_report_general_response (TYPE_4__*,int *) ;
 scalar_t__ scif_sas_smp_remote_device_decode_report_phy_sata_response (TYPE_4__*,int *) ;
 scalar_t__ scif_sas_smp_remote_device_decode_spinup_hold_release_discover_response (TYPE_4__*,int *) ;
 scalar_t__ scif_sas_smp_remote_device_decode_target_reset_discover_response (TYPE_4__*,int *) ;
 scalar_t__ scif_sas_smp_remote_device_decode_target_reset_phy_control_response (TYPE_4__*,int *) ;

SCI_STATUS scif_sas_smp_remote_device_decode_smp_response(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T * fw_request,
   void * response_data,
   SCI_IO_STATUS completion_status
)
{
   SMP_RESPONSE_T * smp_response = (SMP_RESPONSE_T *)response_data;
   SCI_STATUS status = SCI_FAILURE_UNSUPPORTED_INFORMATION_TYPE;

   if (fw_device->protocol_device.smp_device.smp_activity_timer != ((void*)0))
   {


      scif_cb_timer_destroy(
         fw_device->domain->controller,
         fw_device->protocol_device.smp_device.smp_activity_timer
      );

      fw_device->protocol_device.smp_device.smp_activity_timer = ((void*)0);
   }



   if (completion_status == SCI_FAILURE_RETRY_REQUIRED)
   {
      scif_sas_smp_remote_device_continue_current_activity(
         fw_device, fw_request, SCI_FAILURE_RETRY_REQUIRED
      );

      return SCI_FAILURE_RETRY_REQUIRED;
   }


   switch (fw_device->protocol_device.smp_device.current_smp_request)
   {
      case 130:
      {

         status = scif_sas_smp_remote_device_decode_report_general_response(
            fw_device, smp_response
         );

         break;
      }

      case 129:
      {


         status = SCI_SUCCESS;
         break;
      }

      case 132:
      {
         if (fw_device->protocol_device.smp_device.current_activity ==
                SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER)
         {

            status = scif_sas_smp_remote_device_decode_initial_discover_response(
                        fw_device, smp_response
                     );
         }
         else if (fw_device->protocol_device.smp_device.current_activity ==
                  SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET)
         {


            status =
               scif_sas_smp_remote_device_decode_target_reset_discover_response(
                  fw_device, smp_response
               );
         }
         else if (fw_device->protocol_device.smp_device.current_activity ==
                SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_SATA_SPINUP_HOLD_RELEASE)
         {

            status =
               scif_sas_smp_remote_device_decode_spinup_hold_release_discover_response(
                  fw_device, smp_response
               );
         }
         else
            ASSERT(0);
         break;
      }

      case 128:
      {

         status = scif_sas_smp_remote_device_decode_report_phy_sata_response(
            fw_device, smp_response
         );

         break;
      }

      case 131:
      {
         if (fw_device->protocol_device.smp_device.current_activity ==
                SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER)
         {

            status = scif_sas_smp_remote_device_decode_discover_phy_control_response(
                        fw_device, smp_response
                     );
         }
         else if (fw_device->protocol_device.smp_device.current_activity ==
                     SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET)
         {


            status = scif_sas_smp_remote_device_decode_target_reset_phy_control_response(
                        fw_device, smp_response
                     );
         }
         else if (fw_device->protocol_device.smp_device.current_activity ==
                     SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION)
         {

            status = SCI_SUCCESS;
         }
         else
            ASSERT(0);
         break;
      }

      case 133:
      {



         status = scif_sas_smp_remote_device_decode_config_route_info_response(
                     fw_device, smp_response
                  );
         break;
      }

      default:

         status = SCI_FAILURE_UNSUPPORTED_INFORMATION_TYPE;
         break;
   }


   scif_sas_smp_remote_device_continue_current_activity(
      fw_device, fw_request, status
   );

   return status;
}
