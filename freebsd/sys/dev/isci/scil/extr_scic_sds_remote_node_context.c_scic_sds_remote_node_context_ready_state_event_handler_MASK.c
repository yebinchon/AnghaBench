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
struct SCIC_SDS_REMOTE_NODE_CONTEXT {int /*<<< orphan*/  state_machine; int /*<<< orphan*/  device; void* suspension_code; } ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SCI_STATUS ;

/* Variables and functions */
 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ; 
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ; 
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_SDS_REMOTE_NODE_CONTEXT_TX_RX_SUSPENDED_STATE ; 
 int /*<<< orphan*/  SCIC_SDS_REMOTE_NODE_CONTEXT_TX_SUSPENDED_STATE ; 
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
#define  SCU_EVENT_TL_RNC_SUSPEND_TX 129 
#define  SCU_EVENT_TL_RNC_SUSPEND_TX_RX 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SCI_STATUS FUNC6(
   struct SCIC_SDS_REMOTE_NODE_CONTEXT * this_rnc,
   U32                                   event_code
)
{
   SCI_STATUS status;

   switch (FUNC5(event_code))
   {
      case SCU_EVENT_TL_RNC_SUSPEND_TX:
         FUNC2(
            &this_rnc->state_machine,
            SCIC_SDS_REMOTE_NODE_CONTEXT_TX_SUSPENDED_STATE
               );

         this_rnc->suspension_code = FUNC4(event_code);
         status = SCI_SUCCESS;
         break;

      case SCU_EVENT_TL_RNC_SUSPEND_TX_RX:
         FUNC2(
            &this_rnc->state_machine,
            SCIC_SDS_REMOTE_NODE_CONTEXT_TX_RX_SUSPENDED_STATE
               );

         this_rnc->suspension_code = FUNC4(event_code);
         status = SCI_SUCCESS;
         break;

      default:
         FUNC0((
            FUNC1(this_rnc->device),
            SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
               SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
               SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
            "SCIC Remote Node Context 0x%x requested to process event 0x%x while in state %d.\n",
            this_rnc, event_code, FUNC3(&this_rnc->state_machine)
               ));

         status = SCI_FAILURE;
         break;
   }

   return status;
}