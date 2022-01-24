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
#define  SCU_EVENT_HARD_RESET_RECEIVED 132 
#define  SCU_EVENT_LINK_FAILURE 131 
#define  SCU_EVENT_RECEIVED_IDENTIFY_TIMEOUT 130 
#define  SCU_EVENT_SAS_PHY_DETECTED 129 
#define  SCU_EVENT_SATA_SPINUP_HOLD 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SCI_STATUS FUNC6(
   SCIC_SDS_PHY_T *this_phy,
   U32 event_code
)
{
   U32 result = SCI_SUCCESS;

   switch (FUNC5(event_code))
   {
   case SCU_EVENT_SAS_PHY_DETECTED:
      // Backup the state machine
      FUNC3(this_phy);
      break;

   case SCU_EVENT_SATA_SPINUP_HOLD:
      // We were doing SAS PHY link training and received a SATA PHY event
      // continue OOB/SN as if this were a SATA PHY
      FUNC4(this_phy);
   break;

   case SCU_EVENT_RECEIVED_IDENTIFY_TIMEOUT:
   case SCU_EVENT_LINK_FAILURE:
   case SCU_EVENT_HARD_RESET_RECEIVED:
      // Start the oob/sn state machine over again
      FUNC2(this_phy);
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