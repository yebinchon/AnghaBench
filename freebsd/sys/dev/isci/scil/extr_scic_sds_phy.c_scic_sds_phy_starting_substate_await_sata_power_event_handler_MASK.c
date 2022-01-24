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
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
#define  SCU_EVENT_LINK_FAILURE 130 
#define  SCU_EVENT_SAS_PHY_DETECTED 129 
#define  SCU_EVENT_SATA_SPINUP_HOLD 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SCI_STATUS FUNC5(
   SCIC_SDS_PHY_T *this_phy,
   U32 event_code
)
{
   U32 result = SCI_SUCCESS;

   switch (FUNC4(event_code))
   {
   case SCU_EVENT_LINK_FAILURE:
      // Link failure change state back to the starting state
      FUNC2(this_phy);
      break;

   case SCU_EVENT_SATA_SPINUP_HOLD:
      // These events are received every 10ms and are expected while in this state
      break;

   case SCU_EVENT_SAS_PHY_DETECTED:
      // There has been a change in the phy type before OOB/SN for the
      // SATA finished start down the SAS link traning path.
      FUNC3(this_phy);
   break;

   default:
      FUNC0((
         FUNC1(this_phy),
         SCIC_LOG_OBJECT_PHY | SCIC_LOG_OBJECT_RECEIVED_EVENTS,
         "PHY starting substate machine received unexpected event_code %x\n",
         event_code
      ));

      result = SCI_FAILURE;
      break;
   }

   return result;
}