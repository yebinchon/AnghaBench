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
struct TYPE_8__ {scalar_t__ current_state_id; } ;
struct TYPE_9__ {TYPE_1__ state_machine; } ;
struct TYPE_10__ {TYPE_2__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_3__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_READY ; 
 scalar_t__ SCI_BASE_CONTROLLER_STATE_STARTING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static
void FUNC5(
   SCIC_SDS_CONTROLLER_T *this_controller,
   SCI_STATUS             status
)
{
   FUNC0((
      FUNC1(this_controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_transition_to_ready(0x%x, 0x%x) enter\n",
      this_controller, status
   ));

   if (this_controller->parent.state_machine.current_state_id
       == SCI_BASE_CONTROLLER_STATE_STARTING)
   {
      // We move into the ready state, because some of the phys/ports
      // may be up and operational.
      FUNC2(
         FUNC4(this_controller),
         SCI_BASE_CONTROLLER_STATE_READY
      );

      FUNC3(this_controller, status);
   }
}