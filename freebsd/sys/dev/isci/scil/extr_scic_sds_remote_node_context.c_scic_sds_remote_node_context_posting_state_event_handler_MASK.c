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
struct SCIC_SDS_REMOTE_NODE_CONTEXT {int /*<<< orphan*/  device; int /*<<< orphan*/  state_machine; } ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SCI_STATUS ;

/* Variables and functions */
 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ; 
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ; 
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_SDS_REMOTE_NODE_CONTEXT_READY_STATE ; 
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
#define  SCU_EVENT_POST_RNC_COMPLETE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   struct SCIC_SDS_REMOTE_NODE_CONTEXT * this_rnc,
   U32                                   event_code
)
{
   SCI_STATUS status;

   switch (FUNC3(event_code))
   {
      case SCU_EVENT_POST_RNC_COMPLETE:
         status = SCI_SUCCESS;

         FUNC2(
            &this_rnc->state_machine,
            SCIC_SDS_REMOTE_NODE_CONTEXT_READY_STATE
               );
         break;

      default:
         status = SCI_FAILURE;
         FUNC0((
            FUNC1(this_rnc->device),
            SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
               SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
               SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
            "SCIC Remote Node Context 0x%x requested to process unexpected event 0x%x while in posting state\n",
            this_rnc, event_code
               ));
         break;
   }

   return status;
}