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
typedef  size_t U8 ;
struct TYPE_5__ {scalar_t__ completion_queue_get; int /*<<< orphan*/ * port_table; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 size_t SCI_MAX_PORTS ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC5(
   SCI_CONTROLLER_HANDLE_T   controller
)
{
   SCIC_SDS_CONTROLLER_T * this_controller = (SCIC_SDS_CONTROLLER_T*)controller;
   U8 index;

   // As a precaution, disable interrupts.  The user is required
   // to re-enable interrupts if so desired after the call.
   FUNC3(controller);

   // Stop all the timers
   // Maybe change the states of the objects to avoid processing stuff.


   // Suspend the Ports in order to ensure no unexpected
   // frame reception occurs on the links from the target
   for (index = 0; index < SCI_MAX_PORTS; index++)
      FUNC4(
         &(this_controller->port_table[index]));

   // Disable/Reset the completion queue and unsolicited frame
   // queue.
   FUNC1(this_controller, 0x00000000);
   FUNC0(this_controller, 0x00000000);

   // Clear any interrupts that may be pending or may have been generated
   // by setting CQGR and CQPR back to 0
   FUNC2(this_controller, 0xFFFFFFFF);

   //reset the software get pointer to completion queue.
   this_controller->completion_queue_get = 0;

   return SCI_SUCCESS;
}