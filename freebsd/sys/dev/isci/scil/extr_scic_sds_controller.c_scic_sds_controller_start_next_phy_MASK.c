#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ mode_type; } ;
struct TYPE_14__ {TYPE_1__ controller; } ;
struct TYPE_15__ {TYPE_2__ sds1; } ;
struct TYPE_17__ {scalar_t__ phy_startup_timer_pending; size_t next_phy_to_start; TYPE_4__* phy_table; TYPE_3__ oem_parameters; } ;
struct TYPE_16__ {int /*<<< orphan*/  phy_index; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_4__ SCIC_SDS_PHY_T ;
typedef  TYPE_5__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int SCIC_LOG_OBJECT_CONTROLLER ; 
 int SCIC_LOG_OBJECT_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCIC_PORT_MANUAL_CONFIGURATION_MODE ; 
 scalar_t__ SCI_INVALID_HANDLE ; 
 size_t SCI_MAX_PHYS ; 
 scalar_t__ SCI_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 

SCI_STATUS FUNC7(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   SCI_STATUS status;

   status = SCI_SUCCESS;

   if (this_controller->phy_startup_timer_pending == FALSE)
   {
      if (this_controller->next_phy_to_start == SCI_MAX_PHYS)
      {
         // The controller has successfully finished the start process.
         // Inform the SCI Core user and transition to the READY state.
         if (FUNC3(this_controller) == TRUE)
         {
            FUNC5(
               this_controller, SCI_SUCCESS
            );
         }
      }
      else
      {
         SCIC_SDS_PHY_T * the_phy;

         the_phy = &this_controller->phy_table[this_controller->next_phy_to_start];

         if (
               this_controller->oem_parameters.sds1.controller.mode_type
            == SCIC_PORT_MANUAL_CONFIGURATION_MODE
            )
         {
            if (FUNC6(the_phy) == SCI_INVALID_HANDLE)
            {
               this_controller->next_phy_to_start++;

               // Caution recursion ahead be forwarned
               //
               // The PHY was never added to a PORT in MPC mode so start the next phy in sequence
               // This phy will never go link up and will not draw power the OEM parameters either
               // configured the phy incorrectly for the PORT or it was never assigned to a PORT
               return FUNC7(this_controller);
            }
         }

         status = FUNC2(the_phy);

         if (status == SCI_SUCCESS)
         {
            FUNC4(this_controller);
         }
         else
         {
            FUNC0((
               FUNC1(this_controller),
               SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PHY,
               "Controller stop operation failed to stop phy %d because of status %d.\n",
               this_controller->phy_table[this_controller->next_phy_to_start].phy_index,
               status
            ));
         }

         this_controller->next_phy_to_start++;
      }
   }

   return status;
}