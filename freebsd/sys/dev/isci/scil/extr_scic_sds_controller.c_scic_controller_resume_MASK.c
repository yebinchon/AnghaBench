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
typedef  size_t U8 ;
typedef  int U32 ;
struct TYPE_4__ {int /*<<< orphan*/ * phy_table; int /*<<< orphan*/ * port_table; int /*<<< orphan*/  restrict_completions; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 size_t SCI_MAX_PHYS ; 
 size_t SCI_MAX_PORTS ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int SCU_SAS_LLSTA_DWORD_SYNCA_BIT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC5(
   SCI_CONTROLLER_HANDLE_T   controller
)
{
   SCIC_SDS_CONTROLLER_T * this_controller = (SCIC_SDS_CONTROLLER_T*)controller;
   U8 index;

   // Initialize the completion queue and unsolicited frame queue.
   FUNC1(this_controller);
   FUNC2(this_controller);

   this_controller->restrict_completions = FALSE;

   // Release the port suspensions to allow for further successful
   // operation.
   for (index = 0; index < SCI_MAX_PORTS; index++)
      FUNC4(
         &(this_controller->port_table[index]));

   //check the link layer status register DWORD sync acquired bit to detect
   //link down event. If there is any link down event happened during controller
   //suspension, restart phy state machine.
   for (index = 0; index < SCI_MAX_PHYS; index ++)
   {
      SCIC_SDS_PHY_T * curr_phy = &this_controller->phy_table[index];
      U32 link_layer_status = FUNC0(curr_phy);

      if ((link_layer_status & SCU_SAS_LLSTA_DWORD_SYNCA_BIT) == 0)
      {
         //Need to put the phy back to start OOB. Then an appropriate link event
         //message will be send to scic user.
         FUNC3(curr_phy);
      }
   }

   return SCI_SUCCESS;
}