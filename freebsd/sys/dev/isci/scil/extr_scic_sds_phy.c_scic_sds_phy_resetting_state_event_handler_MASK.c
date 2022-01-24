#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;

/* Variables and functions */
 int SCIC_LOG_OBJECT_PHY ; 
 int SCIC_LOG_OBJECT_RECEIVED_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_PHY_STATE_STARTING ; 
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
#define  SCU_EVENT_HARD_RESET_TRANSMITTED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SCI_STATUS FUNC5(
   SCIC_SDS_PHY_T *this_phy,
   U32            event_code
)
{
   SCI_STATUS result = SCI_FAILURE;

   switch (FUNC4(event_code))
   {
   case SCU_EVENT_HARD_RESET_TRANSMITTED:
      // Link failure change state back to the starting state
      FUNC2(
         FUNC3(this_phy),
         SCI_BASE_PHY_STATE_STARTING
         );

      result = SCI_SUCCESS;
      break;

   default:
      FUNC0((
         FUNC1(this_phy),
         SCIC_LOG_OBJECT_PHY | SCIC_LOG_OBJECT_RECEIVED_EVENTS,
         "SCIC PHY 0x%x resetting state machine received unexpected event_code %x\n",
         this_phy, event_code
      ));

      result = SCI_FAILURE_INVALID_STATE;
      break;
   }

   return result;
}