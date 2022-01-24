#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_6__ {void* is_in_link_training; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_1__ SCIC_SDS_PHY_T ;

/* Variables and functions */
 int SCIC_LOG_OBJECT_PHY ; 
 int SCIC_LOG_OBJECT_RECEIVED_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
#define  SCU_EVENT_SAS_PHY_DETECTED 129 
#define  SCU_EVENT_SATA_SPINUP_HOLD 128 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
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
   case SCU_EVENT_SAS_PHY_DETECTED:
      FUNC2(this_phy);
      this_phy->is_in_link_training = TRUE;
   break;

   case SCU_EVENT_SATA_SPINUP_HOLD:
      FUNC3(this_phy);
      this_phy->is_in_link_training = TRUE;
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