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
struct TYPE_3__ {int /*<<< orphan*/ * timer; } ;
typedef  TYPE_1__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(
   SCIC_SDS_CONTROLLER_T               * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent
)
{
   FUNC0((
      FUNC1(controller),
      SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_configuration_agent_release_resource(0x%x, 0x%x)\n",
      controller, port_agent
   ));

   //Currently, the only resource to be released is a timer.
   if (port_agent->timer != NULL)
   {
      FUNC2(controller, port_agent->timer);
      port_agent->timer = NULL;
   }
}