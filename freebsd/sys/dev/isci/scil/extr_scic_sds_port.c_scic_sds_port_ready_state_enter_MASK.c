#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ previous_state_id; } ;
struct TYPE_11__ {TYPE_1__ state_machine; } ;
struct TYPE_12__ {TYPE_2__ parent; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_3__ SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_PORT_NOT_READY_NO_ACTIVE_PHYS ; 
 int /*<<< orphan*/  SCI_BASE_PORT_STATE_READY ; 
 scalar_t__ SCI_BASE_PORT_STATE_RESETTING ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC7(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PORT_T *this_port;
   this_port = (SCIC_SDS_PORT_T *)object;

   // Put the ready state handlers in place though they will not be there long
   FUNC6(
      this_port, SCI_BASE_PORT_STATE_READY
   );

   if (
          SCI_BASE_PORT_STATE_RESETTING
      == this_port->parent.state_machine.previous_state_id
      )
   {
      FUNC1(
         FUNC3(this_port),
         this_port,
         SCI_SUCCESS
      );
   }
   else
   {
      // Notify the caller that the port is not yet ready
      FUNC2(
         FUNC3(this_port),
         this_port,
         SCIC_PORT_NOT_READY_NO_ACTIVE_PHYS
      );
   }

   // Post and suspend the dummy remote node context for this
   // port.
   FUNC5(this_port);

   // Start the ready substate machine
   FUNC0(
      FUNC4(this_port)
   );
}