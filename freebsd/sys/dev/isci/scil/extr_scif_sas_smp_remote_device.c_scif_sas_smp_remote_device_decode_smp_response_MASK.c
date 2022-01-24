#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int current_smp_request; int /*<<< orphan*/  current_activity; int /*<<< orphan*/ * smp_activity_timer; } ;
struct TYPE_17__ {TYPE_2__ smp_device; } ;
struct TYPE_18__ {TYPE_3__ protocol_device; TYPE_1__* domain; } ;
struct TYPE_15__ {int /*<<< orphan*/  controller; } ;
typedef  int /*<<< orphan*/  SMP_RESPONSE_T ;
typedef  scalar_t__ SCI_STATUS ;
typedef  scalar_t__ SCI_IO_STATUS ;
typedef  int /*<<< orphan*/  SCIF_SAS_REQUEST_T ;
typedef  TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION ; 
 int /*<<< orphan*/  SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER ; 
 int /*<<< orphan*/  SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_SATA_SPINUP_HOLD_RELEASE ; 
 int /*<<< orphan*/  SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET ; 
 scalar_t__ SCI_FAILURE_RETRY_REQUIRED ; 
 scalar_t__ SCI_FAILURE_UNSUPPORTED_INFORMATION_TYPE ; 
 scalar_t__ SCI_SUCCESS ; 
#define  SMP_FUNCTION_CONFIGURE_ROUTE_INFORMATION 133 
#define  SMP_FUNCTION_DISCOVER 132 
#define  SMP_FUNCTION_PHY_CONTROL 131 
#define  SMP_FUNCTION_REPORT_GENERAL 130 
#define  SMP_FUNCTION_REPORT_MANUFACTURER_INFORMATION 129 
#define  SMP_FUNCTION_REPORT_PHY_SATA 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC11(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T       * fw_request,
   void                     * response_data,
   SCI_IO_STATUS              completion_status
)
{
   SMP_RESPONSE_T * smp_response = (SMP_RESPONSE_T *)response_data;
   SCI_STATUS       status       = SCI_FAILURE_UNSUPPORTED_INFORMATION_TYPE;

   if (fw_device->protocol_device.smp_device.smp_activity_timer != NULL)
   {
      //if there is a timer being used, recycle it now. Since we may
      //use the timer for other purpose next.
      FUNC1(
         fw_device->domain->controller,
         fw_device->protocol_device.smp_device.smp_activity_timer
      );

      fw_device->protocol_device.smp_device.smp_activity_timer = NULL;
   }

   //if Core set the status of this io to be RETRY_REQUIRED, we should
   //retry the IO without even decode the response.
   if (completion_status == SCI_FAILURE_RETRY_REQUIRED)
   {
      FUNC2(
         fw_device, fw_request, SCI_FAILURE_RETRY_REQUIRED
      );

      return SCI_FAILURE_RETRY_REQUIRED;
   }

   //check the current smp request, decide what's next smp request to issue.
   switch (fw_device->protocol_device.smp_device.current_smp_request)
   {
      case SMP_FUNCTION_REPORT_GENERAL:
      {
         //interpret REPORT GENERAL response.
         status = FUNC6(
            fw_device, smp_response
         );

         break;
      }

      case SMP_FUNCTION_REPORT_MANUFACTURER_INFORMATION:
      {
         // No need to perform any parsing.  Just want to see
         // the information in a trace if necessary.
         status = SCI_SUCCESS;
         break;
      }

      case SMP_FUNCTION_DISCOVER:
      {
         if (fw_device->protocol_device.smp_device.current_activity ==
                SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER)
         {
            //decode discover response
            status = FUNC5(
                        fw_device, smp_response
                     );
         }
         else if (fw_device->protocol_device.smp_device.current_activity ==
                  SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET)
         {
            //decode discover response as a polling result for a remote device
            //target reset.
            status =
               FUNC9(
                  fw_device, smp_response
               );
         }
         else if (fw_device->protocol_device.smp_device.current_activity ==
                SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_SATA_SPINUP_HOLD_RELEASE)
         {
            //decode discover response
            status =
               FUNC8(
                  fw_device, smp_response
               );
         }
         else
            FUNC0(0);
         break;
      }

      case SMP_FUNCTION_REPORT_PHY_SATA:
      {
         //decode the report phy sata response.
         status = FUNC7(
            fw_device, smp_response
         );

         break;
      }

      case SMP_FUNCTION_PHY_CONTROL:
      {
         if (fw_device->protocol_device.smp_device.current_activity ==
                SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER)
         {
            //decode the phy control response.
            status = FUNC4(
                        fw_device, smp_response
                     );
         }
         else if (fw_device->protocol_device.smp_device.current_activity ==
                     SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET)
         {
            //decode discover response as a polling result for a remote device
            //target reset.
            status = FUNC10(
                        fw_device, smp_response
                     );
         }
         else if (fw_device->protocol_device.smp_device.current_activity ==
                     SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION)
         {
            //currently don't care about the status.
            status = SCI_SUCCESS;
         }
         else
            FUNC0(0);
         break;
      }

      case SMP_FUNCTION_CONFIGURE_ROUTE_INFORMATION:
      {
         //Note, currently we don't expect any abnormal status from config route info response,
         //but there is a possibility that we exceed the maximum route index. We will take care
         //of errors later.
         status = FUNC3(
                     fw_device, smp_response
                  );
         break;
      }

      default:
         //unsupported case, TBD
         status = SCI_FAILURE_UNSUPPORTED_INFORMATION_TYPE;
         break;
   } //end of switch

   //Continue current activity based on response's decoding status.
   FUNC2(
      fw_device, fw_request, status
   );

   return status;
}