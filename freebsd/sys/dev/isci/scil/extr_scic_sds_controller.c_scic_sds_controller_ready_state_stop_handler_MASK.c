#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_3__ {int /*<<< orphan*/  timeout_timer; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_CONTROLLER_T ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_STOPPING ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static
SCI_STATUS FUNC3(
   SCI_BASE_CONTROLLER_T *controller,
   U32                   timeout
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   // See if the user requested to timeout this operation
   if (timeout != 0)
      FUNC1(controller, this_controller->timeout_timer, timeout);

   FUNC0(
      FUNC2(this_controller),
      SCI_BASE_CONTROLLER_STATE_STOPPING
   );

   return SCI_SUCCESS;
}