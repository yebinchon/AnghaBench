#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U8 ;
struct TYPE_17__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  core_object; } ;
struct TYPE_16__ {int /*<<< orphan*/  io_tag_to_manage; } ;
struct TYPE_13__ {scalar_t__ attached_stp_target; scalar_t__ attached_ssp_target; } ;
struct TYPE_14__ {TYPE_1__ bits; } ;
struct TYPE_15__ {TYPE_2__ u; } ;
typedef  TYPE_3__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  TYPE_4__ SCIF_SAS_TASK_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_REQUEST_T ;
typedef  TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ; 
 scalar_t__ SCI_FAILURE ; 
 scalar_t__ SCI_FAILURE_INVALID_IO_TAG ; 
 scalar_t__ SCI_FAILURE_UNSUPPORTED_PROTOCOL ; 
 scalar_t__ SCI_SAS_ABORT_TASK ; 
 scalar_t__ SCI_SAS_ABORT_TASK_SET ; 
 scalar_t__ SCI_SAS_CLEAR_ACA ; 
 scalar_t__ SCI_SAS_CLEAR_TASK_SET ; 
 scalar_t__ SCI_SAS_HARD_RESET ; 
 scalar_t__ SCI_SAS_I_T_NEXUS_RESET ; 
 scalar_t__ SCI_SAS_LOGICAL_UNIT_RESET ; 
 scalar_t__ SCI_SAS_QUERY_ASYNCHRONOUS_EVENT ; 
 scalar_t__ SCI_SAS_QUERY_TASK ; 
 scalar_t__ SCI_SAS_QUERY_TASK_SET ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static
SCI_STATUS FUNC8(
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T       * task_request
)
{
   SCI_STATUS                 status     = SCI_FAILURE;
   SCIF_SAS_REMOTE_DEVICE_T * fw_device  = (SCIF_SAS_REMOTE_DEVICE_T*)
                                           remote_device;
   SCIF_SAS_TASK_REQUEST_T  * fw_task    = (SCIF_SAS_TASK_REQUEST_T*)
                                           task_request;
   U8 task_function =
         FUNC7(fw_task);

   SMP_DISCOVER_RESPONSE_PROTOCOLS_T  dev_protocols;

   FUNC3(fw_device->core_object, &dev_protocols);
   if (   dev_protocols.u.bits.attached_ssp_target
       || dev_protocols.u.bits.attached_stp_target)
   {
      // //NOTE: For STP/SATA targets we currently terminate all requests for
      //       any type of task management.
      if (  (task_function == SCI_SAS_ABORT_TASK_SET)
         || (task_function == SCI_SAS_CLEAR_TASK_SET)
         || (task_function == SCI_SAS_LOGICAL_UNIT_RESET)
         || (task_function == SCI_SAS_I_T_NEXUS_RESET)
         || (task_function == SCI_SAS_HARD_RESET) )
      {
         // Terminate all of the requests in the silicon for this device.
         FUNC5(
            fw_device->domain, fw_device, NULL, fw_task
         );

         status = FUNC6(fw_device, fw_task);
      }
      else if (  (task_function == SCI_SAS_CLEAR_ACA)
              || (task_function == SCI_SAS_QUERY_TASK)
              || (task_function == SCI_SAS_QUERY_TASK_SET)
              || (task_function == SCI_SAS_QUERY_ASYNCHRONOUS_EVENT) )
      {
       FUNC0(!dev_protocols.u.bits.attached_stp_target);
         status = FUNC6(fw_device, fw_task);
      }
      else if (task_function == SCI_SAS_ABORT_TASK)
      {
         SCIF_SAS_REQUEST_T * fw_request
            = FUNC4(
                 fw_device->domain, fw_task->io_tag_to_manage
              );

         // Determine if the request being aborted was found.
         if (fw_request != NULL)
         {
            FUNC5(
               fw_device->domain, fw_device, fw_request, fw_task
            );

            status = FUNC6(
                        fw_device, fw_task
                     );
         }
         else
            status = SCI_FAILURE_INVALID_IO_TAG;
      }
   }
   else
      status = SCI_FAILURE_UNSUPPORTED_PROTOCOL;

   if (status != SCI_SUCCESS)
   {
      FUNC1((
         FUNC2(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_TASK_MANAGEMENT,
         "Controller:0x%x TaskRequest:0x%x Status:0x%x start task failure\n",
         fw_device, fw_task, status
      ));
   }

   return status;
}