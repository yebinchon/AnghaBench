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
struct TYPE_3__ {scalar_t__ timer_pending; int /*<<< orphan*/ * timer; } ;
typedef  TYPE_1__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(
   SCIC_SDS_CONTROLLER_T               * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent
)
{
   if (port_agent->timer_pending == TRUE)
   {
      FUNC1(controller, port_agent->timer);
   }

   FUNC0(controller, port_agent->timer);

   port_agent->timer_pending = FALSE;
   port_agent->timer = NULL;
}