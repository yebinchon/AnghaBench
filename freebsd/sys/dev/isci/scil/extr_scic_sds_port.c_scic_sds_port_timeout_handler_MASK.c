#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U32 ;
struct TYPE_5__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_6__ {TYPE_1__ parent; } ;
typedef  TYPE_2__ SCIC_SDS_PORT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  SCI_BASE_PORT_STATE_FAILED ; 
 scalar_t__ SCI_BASE_PORT_STATE_RESETTING ; 
 scalar_t__ SCI_BASE_PORT_STATE_STOPPED ; 
 scalar_t__ SCI_BASE_PORT_STATE_STOPPING ; 
 int /*<<< orphan*/  SCI_FAILURE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(
   void *port
)
{
   U32 current_state;
   SCIC_SDS_PORT_T * this_port;

   this_port = (SCIC_SDS_PORT_T *)port;
   current_state = FUNC3(
                           &this_port->parent.state_machine);

   if (current_state == SCI_BASE_PORT_STATE_RESETTING)
   {
      // if the port is still in the resetting state then the timeout fired
      // before the reset completed.
      FUNC2(
         &this_port->parent.state_machine,
         SCI_BASE_PORT_STATE_FAILED
      );
   }
   else if (current_state == SCI_BASE_PORT_STATE_STOPPED)
   {
      // if the port is stopped then the start request failed
      // In this case stay in the stopped state.
      FUNC0((
         FUNC1(this_port),
         SCIC_LOG_OBJECT_PORT,
         "SCIC Port 0x%x failed to stop before tiemout.\n",
         this_port
      ));
   }
   else if (current_state == SCI_BASE_PORT_STATE_STOPPING)
   {
      // if the port is still stopping then the stop has not completed
      FUNC4(
         FUNC5(this_port),
         port,
         SCI_FAILURE_TIMEOUT
      );
   }
   else
   {
      // The port is in the ready state and we have a timer reporting a timeout
      // this should not happen.
      FUNC0((
         FUNC1(this_port),
         SCIC_LOG_OBJECT_PORT,
         "SCIC Port 0x%x is processing a timeout operation in state %d.\n",
         this_port, current_state
      ));
   }
}