#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  owning_port; int /*<<< orphan*/  ready_substate_machine; } ;
struct TYPE_9__ {scalar_t__ sci_status; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  TYPE_1__ SCIC_SDS_REQUEST_T ;
typedef  TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_STP_REMOTE_TARGET ; 
 int /*<<< orphan*/  SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_AWAIT_RESET ; 
 int /*<<< orphan*/  SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_IDLE ; 
 scalar_t__ SCI_FAILURE_REMOTE_DEVICE_RESET_REQUIRED ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static
SCI_STATUS FUNC7(
   SCI_BASE_REMOTE_DEVICE_T * device,
   SCI_BASE_REQUEST_T       * request
)
{
   SCIC_SDS_REMOTE_DEVICE_T * this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;
   SCIC_SDS_REQUEST_T       * the_request = (SCIC_SDS_REQUEST_T *)request;
   SCI_STATUS                 status;

   status = FUNC3(the_request);

   if (status == SCI_SUCCESS)
   {
      status = FUNC4(
                  this_device->owning_port, this_device, the_request
               );

      if (status == SCI_SUCCESS)
      {
         FUNC5(this_device);
         if (the_request->sci_status == SCI_FAILURE_REMOTE_DEVICE_RESET_REQUIRED)
         {
            //This request causes hardware error, device needs to be Lun Reset.
            //So here we force the state machine to IDLE state so the rest IOs
            //can reach RNC state handler, these IOs will be completed by RNC with
            //status of "DEVICE_RESET_REQUIRED", instead of "INVALID STATE".
            FUNC2(
               &this_device->ready_substate_machine,
               SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_AWAIT_RESET
            );
         }
         else if (FUNC6(this_device) == 0)
         {
            FUNC2(
               &this_device->ready_substate_machine,
               SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_IDLE
            );
         }
      }
   }

   if (status != SCI_SUCCESS)
   {
      FUNC0((
         FUNC1(this_device),
         SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
         "Port:0x%x Device:0x%x Request:0x%x Status:0x%x could not complete\n",
         this_device->owning_port, this_device, the_request, status
      ));
   }

   return status;
}