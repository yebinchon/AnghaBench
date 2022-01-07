
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_4__ {int * error_counter; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_PHY_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;
typedef int SCIC_PHY_COUNTER_ID_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 int SCI_SUCCESS ;
 size_t SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX ;
 size_t SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX ;
 size_t SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX ;
 size_t SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX ;
 size_t SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX ;
 size_t SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX ;
 int loss_of_sync_error_count ;
 int phy_reset_problem_count ;
 int received_dword_count ;
 int received_frame_after_done_count ;
 int received_frame_count ;
 int received_frame_crc_error_count ;
 int received_frame_without_credit_count ;
 int received_short_frame_count ;
 int running_disparity_error_count ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scu_link_layer_register_read (TYPE_1__*,int ) ;
 int transmit_dword_count ;
 int transmit_frame_count ;

SCI_STATUS scic_phy_get_counter(
   SCI_PHY_HANDLE_T phy,
   SCIC_PHY_COUNTER_ID_T counter_id,
   U32 * data
)
{
   SCIC_SDS_PHY_T *this_phy;
   SCI_STATUS status = SCI_SUCCESS;
   this_phy = (SCIC_SDS_PHY_T *)phy;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_phy_get_counter(0x%x, 0x%x) enter\n",
      this_phy, counter_id
   ));

   switch(counter_id)
   {
      case 138:
         *data = scu_link_layer_register_read(this_phy, received_frame_count);
         break;
      case 129:
         *data = scu_link_layer_register_read(this_phy, transmit_frame_count);
         break;
      case 135:
         *data = scu_link_layer_register_read(this_phy, received_dword_count);
         break;
      case 128:
         *data = scu_link_layer_register_read(this_phy, transmit_dword_count);
         break;
      case 143:
         *data = scu_link_layer_register_read(this_phy, loss_of_sync_error_count);
         break;
      case 141:
         *data = scu_link_layer_register_read(this_phy, running_disparity_error_count);
         break;
      case 136:
         *data = scu_link_layer_register_read(this_phy, received_frame_crc_error_count);
         break;
      case 140:
         *data = this_phy->error_counter[SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX];
         break;
      case 131:
         *data = this_phy->error_counter[SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX];
         break;
      case 144:
         *data = this_phy->error_counter[SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX];
         break;
      case 139:
         *data = this_phy->error_counter[SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX];
         break;
      case 130:
         *data = this_phy->error_counter[SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX];
         break;
      case 142:
         *data = this_phy->error_counter[SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX];
         break;
      case 133:
         *data = scu_link_layer_register_read(this_phy, received_short_frame_count);
         break;
      case 134:
         *data = scu_link_layer_register_read(this_phy, received_frame_without_credit_count);
         break;
      case 137:
         *data = scu_link_layer_register_read(this_phy, received_frame_after_done_count);
         break;
      case 132:
         *data = scu_link_layer_register_read(this_phy, phy_reset_problem_count);
         break;
      default:
         status = SCI_FAILURE;
         break;
   }

   return status;
}
