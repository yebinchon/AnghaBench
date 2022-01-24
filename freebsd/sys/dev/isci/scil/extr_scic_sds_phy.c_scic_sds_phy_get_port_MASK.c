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
struct TYPE_4__ {int /*<<< orphan*/  owning_port; } ;
typedef  int /*<<< orphan*/  SCI_PORT_HANDLE_T ;
typedef  TYPE_1__ SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCIC_SDS_DUMMY_PORT ; 
 int /*<<< orphan*/  SCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

SCI_PORT_HANDLE_T FUNC3(
   SCIC_SDS_PHY_T *this_phy
)
{
   FUNC0((
      FUNC1(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_phy_get_port(0x%x) enter\n",
      this_phy
   ));

   if (FUNC2(this_phy->owning_port) == SCIC_SDS_DUMMY_PORT)
      return SCI_INVALID_HANDLE;

   return this_phy->owning_port;
}