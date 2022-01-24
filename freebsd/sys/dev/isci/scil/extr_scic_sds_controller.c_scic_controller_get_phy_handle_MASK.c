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
struct TYPE_5__ {int /*<<< orphan*/ * phy_table; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/ * SCI_PHY_HANDLE_T ;
typedef  TYPE_1__* SCI_CONTROLLER_HANDLE_T ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SCIC_LOG_OBJECT_CONTROLLER ; 
 int SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_PHY ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

SCI_STATUS FUNC4(
   SCI_CONTROLLER_HANDLE_T controller,
   U8                      phy_index,
   SCI_PHY_HANDLE_T *      phy_handle
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   FUNC2((
      FUNC3(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_controller_get_phy_handle(0x%x, 0x%x, 0x%x) enter\n",
      controller, phy_index, phy_handle
   ));

   if (phy_index < FUNC0(this_controller->phy_table))
   {
      *phy_handle = &this_controller->phy_table[phy_index];

      return SCI_SUCCESS;
   }

   FUNC1((
      FUNC3(this_controller),
      SCIC_LOG_OBJECT_PORT | SCIC_LOG_OBJECT_CONTROLLER,
      "Controller:0x%x PhyId:0x%x invalid phy index\n",
      this_controller, phy_index
   ));

   return SCI_FAILURE_INVALID_PHY;
}