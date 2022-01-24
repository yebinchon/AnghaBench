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
typedef  int U32 ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  scalar_t__ SCI_PHY_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;
typedef  int /*<<< orphan*/  SCIC_PHY_COUNTER_ID_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SCIC_PHY_COUNTER_INACTIVITY_TIMER_EXPIRED 144 
#define  SCIC_PHY_COUNTER_LOSS_OF_SYNC_ERROR 143 
#define  SCIC_PHY_COUNTER_RECEIVED_CREDIT_BLOCKED 142 
#define  SCIC_PHY_COUNTER_RECEIVED_DISPARITY_ERROR 141 
#define  SCIC_PHY_COUNTER_RECEIVED_DONE_ACK_NAK_TIMEOUT 140 
#define  SCIC_PHY_COUNTER_RECEIVED_DONE_CREDIT_TIMEOUT 139 
#define  SCIC_PHY_COUNTER_RECEIVED_FRAME 138 
#define  SCIC_PHY_COUNTER_RECEIVED_FRAME_AFTER_DONE 137 
#define  SCIC_PHY_COUNTER_RECEIVED_FRAME_CRC_ERROR 136 
#define  SCIC_PHY_COUNTER_RECEIVED_FRAME_DWORD 135 
#define  SCIC_PHY_COUNTER_RECEIVED_FRAME_WITHOUT_CREDIT 134 
#define  SCIC_PHY_COUNTER_RECEIVED_SHORT_FRAME 133 
#define  SCIC_PHY_COUNTER_SN_DWORD_SYNC_ERROR 132 
#define  SCIC_PHY_COUNTER_TRANSMITTED_DONE_ACK_NAK_TIMEOUT 131 
#define  SCIC_PHY_COUNTER_TRANSMITTED_DONE_CREDIT_TIMEOUT 130 
#define  SCIC_PHY_COUNTER_TRANSMITTED_FRAME 129 
#define  SCIC_PHY_COUNTER_TRANSMITTED_FRAME_DWORD 128 
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX ; 
 int SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX ; 
 int SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX ; 
 int SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX ; 
 int SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX ; 
 int SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC4(
   SCI_PHY_HANDLE_T       phy,
   SCIC_PHY_COUNTER_ID_T  counter_id
)
{
   SCIC_SDS_PHY_T *this_phy;
   SCI_STATUS status = SCI_SUCCESS;

   this_phy = (SCIC_SDS_PHY_T *)phy;

   FUNC0((
      FUNC3(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_phy_disable_counter(0x%x, 0x%x) enter\n",
      this_phy, counter_id
   ));

   switch(counter_id)
   {
      case SCIC_PHY_COUNTER_RECEIVED_DONE_ACK_NAK_TIMEOUT:
         {
            U32 control = FUNC1(this_phy);
            control &= ~(1 << SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX);
            FUNC2(this_phy, control);
         }
         break;
      case SCIC_PHY_COUNTER_TRANSMITTED_DONE_ACK_NAK_TIMEOUT:
         {
            U32 control = FUNC1(this_phy);
            control &= ~(1 << SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX);
            FUNC2(this_phy, control);
         }
         break;
      case SCIC_PHY_COUNTER_INACTIVITY_TIMER_EXPIRED:
         {
            U32 control = FUNC1(this_phy);
            control &= ~(1 << SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX);
            FUNC2(this_phy, control);
         }
         break;
      case SCIC_PHY_COUNTER_RECEIVED_DONE_CREDIT_TIMEOUT:
         {
            U32 control = FUNC1(this_phy);
            control &= ~(1 << SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX);
            FUNC2(this_phy, control);
         }
         break;
      case SCIC_PHY_COUNTER_TRANSMITTED_DONE_CREDIT_TIMEOUT:
         {
            U32 control = FUNC1(this_phy);
            control &= ~(1 << SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX);
            FUNC2(this_phy, control);
         }
         break;
      case SCIC_PHY_COUNTER_RECEIVED_CREDIT_BLOCKED:
         {
            U32 control = FUNC1(this_phy);
            control &= ~(1 << SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX);
            FUNC2(this_phy, control);
         }
         break;

         // These error counters cannot be disabled, so return SCI_FAILURE.
      case SCIC_PHY_COUNTER_RECEIVED_FRAME:
      case SCIC_PHY_COUNTER_TRANSMITTED_FRAME:
      case SCIC_PHY_COUNTER_RECEIVED_FRAME_DWORD:
      case SCIC_PHY_COUNTER_TRANSMITTED_FRAME_DWORD:
      case SCIC_PHY_COUNTER_LOSS_OF_SYNC_ERROR:
      case SCIC_PHY_COUNTER_RECEIVED_DISPARITY_ERROR:
      case SCIC_PHY_COUNTER_RECEIVED_FRAME_CRC_ERROR:
      case SCIC_PHY_COUNTER_RECEIVED_SHORT_FRAME:
      case SCIC_PHY_COUNTER_RECEIVED_FRAME_WITHOUT_CREDIT:
      case SCIC_PHY_COUNTER_RECEIVED_FRAME_AFTER_DONE:
      case SCIC_PHY_COUNTER_SN_DWORD_SYNC_ERROR:
      default:
         status = SCI_FAILURE;
         break;
   }
   return status;
}