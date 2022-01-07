
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_PHY_HANDLE_T ;
typedef int SCIC_SDS_PHY_T ;
typedef int SCIC_PHY_COUNTER_ID_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 int SCI_SUCCESS ;
 int SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX ;
 int SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX ;
 int SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX ;
 int SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX ;
 int SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX ;
 int SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX ;
 int SCU_SAS_ECENCR_READ (int *) ;
 int SCU_SAS_ECENCR_WRITE (int *,int) ;
 int sci_base_object_get_logger (int *) ;

SCI_STATUS scic_phy_enable_counter(
   SCI_PHY_HANDLE_T phy,
   SCIC_PHY_COUNTER_ID_T counter_id
)
{
   SCIC_SDS_PHY_T *this_phy;
   SCI_STATUS status = SCI_SUCCESS;
   this_phy = (SCIC_SDS_PHY_T *)phy;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_phy_enable_counter(0x%x, 0x%x) enter\n",
      this_phy, counter_id
   ));

   switch(counter_id)
   {
      case 140:
         {
            U32 control = SCU_SAS_ECENCR_READ(this_phy);
            control |= (1 << SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX);
            SCU_SAS_ECENCR_WRITE(this_phy, control);
         }
         break;
      case 131:
         {
            U32 control = SCU_SAS_ECENCR_READ(this_phy);
            control |= (1 << SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX);
            SCU_SAS_ECENCR_WRITE(this_phy, control);
         }
         break;
      case 144:
         {
            U32 control = SCU_SAS_ECENCR_READ(this_phy);
            control |= (1 << SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX);
            SCU_SAS_ECENCR_WRITE(this_phy, control);
         }
         break;
      case 139:
         {
            U32 control = SCU_SAS_ECENCR_READ(this_phy);
            control |= (1 << SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX);
            SCU_SAS_ECENCR_WRITE(this_phy, control);
         }
         break;
      case 130:
         {
            U32 control = SCU_SAS_ECENCR_READ(this_phy);
            control |= (1 << SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX);
            SCU_SAS_ECENCR_WRITE(this_phy, control);
         }
         break;
      case 142:
         {
            U32 control = SCU_SAS_ECENCR_READ(this_phy);
            control |= (1 << SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX);
            SCU_SAS_ECENCR_WRITE(this_phy, control);
         }
         break;





      case 138:
      case 129:
      case 135:
      case 128:
      case 143:
      case 141:
      case 136:
      case 133:
      case 134:
      case 137:
      case 132:
         break;

      default:
         status = SCI_FAILURE;
         break;
   }
   return status;
}
