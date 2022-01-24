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
 int /*<<< orphan*/  SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SIG_FIS_UF ; 
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  SCI_SAS_150_GB ; 
 int /*<<< orphan*/  SCI_SAS_300_GB ; 
 int /*<<< orphan*/  SCI_SAS_600_GB ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
#define  SCU_EVENT_LINK_FAILURE 136 
#define  SCU_EVENT_SAS_PHY_DETECTED 135 
#define  SCU_EVENT_SATA_15 134 
#define  SCU_EVENT_SATA_15_SSC 133 
#define  SCU_EVENT_SATA_30 132 
#define  SCU_EVENT_SATA_30_SSC 131 
#define  SCU_EVENT_SATA_60 130 
#define  SCU_EVENT_SATA_60_SSC 129 
#define  SCU_EVENT_SATA_PHY_DETECTED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
   case SCU_EVENT_SATA_PHY_DETECTED:
      // The hardware reports multiple SATA PHY detected events
      // ignore the extras
   break;

   case SCU_EVENT_SATA_15:
   case SCU_EVENT_SATA_15_SSC:
      FUNC2(
         this_phy,
         SCI_SAS_150_GB,
         SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SIG_FIS_UF
      );
   break;

   case SCU_EVENT_SATA_30:
   case SCU_EVENT_SATA_30_SSC:
      FUNC2(
         this_phy,
         SCI_SAS_300_GB,
         SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SIG_FIS_UF
      );
   break;

   case SCU_EVENT_SATA_60:
   case SCU_EVENT_SATA_60_SSC:
      FUNC2(
         this_phy,
         SCI_SAS_600_GB,
         SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SIG_FIS_UF
      );
   break;

   case SCU_EVENT_LINK_FAILURE:
      // Link failure change state back to the starting state
      FUNC3(this_phy);
   break;

   case SCU_EVENT_SAS_PHY_DETECTED:
      // There has been a change in the phy type before OOB/SN for the
      // SATA finished start down the SAS link traning path.
      FUNC4(this_phy);
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