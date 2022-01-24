#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
typedef  size_t U16 ;
struct TYPE_17__ {size_t task_context_entries; size_t logical_port_entries; int /*<<< orphan*/  timeout_timer; TYPE_3__* port_table; int /*<<< orphan*/  remote_node_entries; int /*<<< orphan*/  available_remote_nodes; int /*<<< orphan*/  tci_pool; } ;
struct TYPE_16__ {int /*<<< orphan*/  parent; TYPE_2__* state_handlers; } ;
struct TYPE_14__ {scalar_t__ (* start_handler ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_15__ {TYPE_1__ parent; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_CONTROLLER_T ;
typedef  TYPE_4__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_STARTING ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 scalar_t__ FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC16(
   SCI_BASE_CONTROLLER_T * controller,
   U32                     timeout
)
{
   U16                     index;
   SCI_STATUS              result;
   SCIC_SDS_CONTROLLER_T * this_controller;

   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   // Make sure that the SCI User filled in the memory descriptor table correctly
   result = FUNC13(this_controller);

   if (result == SCI_SUCCESS)
   {
      // The memory descriptor list looks good so program the hardware
      FUNC11(this_controller);
   }

   if (SCI_SUCCESS == result)
   {
      // Build the TCi free pool
      FUNC1(this_controller->tci_pool);
      for (index = 0; index < this_controller->task_context_entries; index++)
      {
         FUNC2(this_controller->tci_pool, index);
      }

      // Build the RNi free pool
      FUNC14(
         &this_controller->available_remote_nodes,
         this_controller->remote_node_entries
      );
   }

   if (SCI_SUCCESS == result)
   {
      // Before anything else lets make sure we will not be interrupted
      // by the hardware.
      FUNC4(controller);

      // Enable the port task scheduler
      FUNC6(this_controller);

      // Assign all the task entries to this controller physical function
      FUNC5(this_controller);

      // Now initialze the completion queue
      FUNC8(this_controller);

      // Initialize the unsolicited frame queue for use
      FUNC10(this_controller);

      // Setup the phy start timer
      result = FUNC9(this_controller);
   }

   // Start all of the ports on this controller
   for (
          index = 0;
          (index < this_controller->logical_port_entries) && (result == SCI_SUCCESS);
          index++
       )
   {
      result = this_controller->port_table[index].
         state_handlers->parent.start_handler(&this_controller->port_table[index].parent);
   }

   if (SCI_SUCCESS == result)
   {
      FUNC12(this_controller);

      // See if the user requested to timeout this operation.
      if (timeout != 0)
         FUNC3(controller, this_controller->timeout_timer, timeout);

      FUNC0(
         FUNC7(this_controller),
         SCI_BASE_CONTROLLER_STATE_STARTING
      );
   }

   return result;
}