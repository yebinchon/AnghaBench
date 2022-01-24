#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  owning_port; int /*<<< orphan*/  ready_substate_machine; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ; 
 int /*<<< orphan*/  SCIC_SDS_SMP_REMOTE_DEVICE_READY_SUBSTATE_IDLE ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static
SCI_STATUS FUNC6(
   SCI_BASE_REMOTE_DEVICE_T * device,
   SCI_BASE_REQUEST_T       * request
)
{
   SCI_STATUS                 status;
   SCIC_SDS_REMOTE_DEVICE_T * this_device;
   SCIC_SDS_REQUEST_T       * the_request;

   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;
   the_request = (SCIC_SDS_REQUEST_T       *)request;

   status = FUNC3(the_request);

   if (status == SCI_SUCCESS)
   {
      status = FUNC4(
         this_device->owning_port, this_device, the_request);

      if (status == SCI_SUCCESS)
      {
       FUNC5(this_device);
         FUNC2(
            &this_device->ready_substate_machine,
            SCIC_SDS_SMP_REMOTE_DEVICE_READY_SUBSTATE_IDLE
         );
      }
      else
      {
         FUNC0((
            FUNC1(this_device),
            SCIC_LOG_OBJECT_SMP_REMOTE_TARGET,
            "SCIC SDS Remote Device 0x%x io request 0x%x could not be completd on the port 0x%x failed with status %d.\n",
            this_device, the_request, this_device->owning_port, status
         ));
      }
   }

   return status;
}