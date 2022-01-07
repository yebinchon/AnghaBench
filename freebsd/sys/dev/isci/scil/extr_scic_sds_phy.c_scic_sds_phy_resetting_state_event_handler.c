
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_OBJECT_RECEIVED_EVENTS ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_BASE_PHY_STATE_STARTING ;
 int SCI_FAILURE ;
 int SCI_FAILURE_INVALID_STATE ;
 int SCI_SUCCESS ;

 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_phy_get_base_state_machine (int *) ;
 int scu_get_event_code (int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_phy_resetting_state_event_handler(
   SCIC_SDS_PHY_T *this_phy,
   U32 event_code
)
{
   SCI_STATUS result = SCI_FAILURE;

   switch (scu_get_event_code(event_code))
   {
   case 128:

      sci_base_state_machine_change_state(
         scic_sds_phy_get_base_state_machine(this_phy),
         SCI_BASE_PHY_STATE_STARTING
         );

      result = SCI_SUCCESS;
      break;

   default:
      SCIC_LOG_WARNING((
         sci_base_object_get_logger(this_phy),
         SCIC_LOG_OBJECT_PHY | SCIC_LOG_OBJECT_RECEIVED_EVENTS,
         "SCIC PHY 0x%x resetting state machine received unexpected event_code %x\n",
         this_phy, event_code
      ));

      result = SCI_FAILURE_INVALID_STATE;
      break;
   }

   return result;
}
