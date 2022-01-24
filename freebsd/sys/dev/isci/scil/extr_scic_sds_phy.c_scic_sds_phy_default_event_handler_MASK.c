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
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_5__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_6__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_2__ SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC3(
   SCIC_SDS_PHY_T *this_phy,
   U32            event_code
)
{
   FUNC0((
      FUNC1(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "SCIC Phy 0x%08x received unexpected event status %x while in state %d\n",
      this_phy, event_code,
      FUNC2(&this_phy->parent.state_machine)
   ));

   return SCI_FAILURE_INVALID_STATE;
}