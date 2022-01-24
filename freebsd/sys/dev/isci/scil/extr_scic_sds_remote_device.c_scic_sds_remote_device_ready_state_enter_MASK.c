#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ready_substate_machine; scalar_t__ has_ready_substate_machine; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_READY ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  scic_sds_remote_device_state_handler_table ; 

__attribute__((used)) static
void FUNC6(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T    * the_controller;
   SCIC_SDS_REMOTE_DEVICE_T * this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   the_controller = FUNC5(this_device);

   FUNC0(
      this_device,
      scic_sds_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_READY
   );

   /// @todo Check the device object for the proper return code for this
   ///       callback
   FUNC3(
      the_controller, this_device, SCI_SUCCESS
   );

   FUNC4(
      the_controller, this_device
   );

   if (this_device->has_ready_substate_machine)
   {
      FUNC1(&this_device->ready_substate_machine);
   }
   else
   {
      FUNC2(the_controller, this_device);
   }
}