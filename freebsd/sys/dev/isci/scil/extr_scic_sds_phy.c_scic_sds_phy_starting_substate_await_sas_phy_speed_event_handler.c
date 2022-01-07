
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
 int SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_IAF_UF ;
 int SCI_FAILURE ;
 int SCI_SAS_150_GB ;
 int SCI_SAS_300_GB ;
 int SCI_SAS_600_GB ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (int *) ;
 int scic_sds_phy_complete_link_training (int *,int ,int ) ;
 int scic_sds_phy_restart_starting_state (int *) ;
 int scic_sds_phy_start_sata_link_training (int *) ;
 int scu_get_event_code (int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_phy_starting_substate_await_sas_phy_speed_event_handler(
   SCIC_SDS_PHY_T *this_phy,
   U32 event_code
)
{
   U32 result = SCI_SUCCESS;

   switch (scu_get_event_code(event_code))
   {
   case 129:


   break;

   case 135:
   case 134:
      scic_sds_phy_complete_link_training(
         this_phy, SCI_SAS_150_GB, SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_IAF_UF
      );
   break;

   case 133:
   case 132:
      scic_sds_phy_complete_link_training(
         this_phy, SCI_SAS_300_GB, SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_IAF_UF
      );
   break;

   case 131:
   case 130:
      scic_sds_phy_complete_link_training(
         this_phy, SCI_SAS_600_GB, SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_IAF_UF
      );
   break;

   case 128:


      scic_sds_phy_start_sata_link_training(this_phy);
   break;

   case 136:

      scic_sds_phy_restart_starting_state(this_phy);
   break;

   default:
      SCIC_LOG_WARNING((
         sci_base_object_get_logger(this_phy),
         SCIC_LOG_OBJECT_PHY | SCIC_LOG_OBJECT_RECEIVED_EVENTS,
         "PHY starting substate machine received unexpected event_code %x\n",
         event_code
      ));

      result = SCI_FAILURE;
   break;
   }

   return result;
}
