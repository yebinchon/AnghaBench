#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ready_substate_machine; scalar_t__ has_ready_substate_machine; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_REMOTE_DEVICE_NOT_READY_STOP_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static
void FUNC3(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T    * the_controller;
   SCIC_SDS_REMOTE_DEVICE_T * this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   the_controller = FUNC2(this_device);

   if (this_device->has_ready_substate_machine)
   {
      FUNC0(&this_device->ready_substate_machine);
   }
   else
   {
      FUNC1(
         the_controller,
         this_device,
         SCIC_REMOTE_DEVICE_NOT_READY_STOP_REQUESTED
      );
   }
}