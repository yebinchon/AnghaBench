#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_10__ {TYPE_2__* state_handlers; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* start_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_3__* SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_BASE_CONTROLLER_T ;
typedef  TYPE_3__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

SCI_STATUS FUNC6(
   SCI_CONTROLLER_HANDLE_T controller,
   U32 timeout
)
{
   SCI_STATUS status = SCI_FAILURE_INVALID_STATE;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   FUNC0((
      FUNC2(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_controller_start(0x%x, 0x%d) enter\n",
      controller, timeout
   ));

   if (this_controller->state_handlers->parent.start_handler != NULL)
   {
      status = this_controller->state_handlers->parent.start_handler(
                  (SCI_BASE_CONTROLLER_T *)controller, timeout
               );
   }
   else
   {
      FUNC1((
         FUNC2(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller start operation requested in invalid state %d\n",
         FUNC3(
            FUNC4(this_controller))
      ));
   }

   return status;
}