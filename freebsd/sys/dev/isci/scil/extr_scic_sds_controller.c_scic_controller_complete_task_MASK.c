#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent; TYPE_1__* state_handlers; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* complete_task_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {TYPE_2__ parent; } ;
typedef  scalar_t__ SCI_TASK_REQUEST_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  TYPE_3__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC4(
   SCI_CONTROLLER_HANDLE_T    controller,
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_TASK_REQUEST_HANDLE_T  task_request
)
{
   SCI_STATUS status = SCI_FAILURE_INVALID_STATE;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   FUNC1((
      FUNC2(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_controller_complete_task(0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, task_request
   ));

   if (this_controller->state_handlers->parent.complete_task_handler != NULL)
   {
      status = this_controller->state_handlers->parent.complete_task_handler(
                  &this_controller->parent,
                  (SCI_BASE_REMOTE_DEVICE_T *)remote_device,
                  (SCI_BASE_REQUEST_T *)task_request
               );
   }
   else
   {
      FUNC0((
         FUNC2(controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller completing task from invalid state\n"
      ));
   }

   return status;
}