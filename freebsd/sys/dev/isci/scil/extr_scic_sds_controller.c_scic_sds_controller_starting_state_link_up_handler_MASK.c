#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  (* link_up_handler ) (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {TYPE_3__ port_agent; } ;
typedef  int /*<<< orphan*/  SCIC_SDS_PORT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC3(
   SCIC_SDS_CONTROLLER_T *this_controller,
   SCIC_SDS_PORT_T       *port,
   SCIC_SDS_PHY_T        *phy
)
{
   FUNC0(this_controller);

   this_controller->port_agent.link_up_handler(
      this_controller, &this_controller->port_agent, port, phy
   );
   //scic_sds_port_link_up(port, phy);

   FUNC1(this_controller);
}