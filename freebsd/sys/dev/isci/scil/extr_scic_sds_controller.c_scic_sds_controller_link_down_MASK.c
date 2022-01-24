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
struct TYPE_12__ {TYPE_1__* state_handlers; } ;
struct TYPE_11__ {int /*<<< orphan*/  phy_index; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* link_down_handler ) (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  SCIC_SDS_PORT_T ;
typedef  TYPE_2__ SCIC_SDS_PHY_T ;
typedef  TYPE_3__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC5(
   SCIC_SDS_CONTROLLER_T *this_controller,
   SCIC_SDS_PORT_T       *the_port,
   SCIC_SDS_PHY_T        *the_phy
)
{
   if (this_controller->state_handlers->link_down_handler != NULL)
   {
      this_controller->state_handlers->link_down_handler(
         this_controller, the_port, the_phy);
   }
   else
   {
      FUNC0((
         FUNC1(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller linkdown event from phy %d in unexpected state %d\n",
         the_phy->phy_index,
         FUNC2(
            FUNC3(this_controller))
      ));
   }
}