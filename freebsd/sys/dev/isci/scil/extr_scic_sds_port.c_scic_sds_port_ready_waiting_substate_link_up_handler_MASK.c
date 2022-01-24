#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ready_substate_machine; } ;
typedef  TYPE_1__ SCIC_SDS_PORT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC2(
   SCIC_SDS_PORT_T *this_port,
   SCIC_SDS_PHY_T  *the_phy
)
{
   // Since this is the first phy going link up for the port we can just enable
   // it and continue.
   FUNC1(this_port, the_phy, TRUE, TRUE);

   FUNC0(
      &this_port->ready_substate_machine,
      SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL
   );
}