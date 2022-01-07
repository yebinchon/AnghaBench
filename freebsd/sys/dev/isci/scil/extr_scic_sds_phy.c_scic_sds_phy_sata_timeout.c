
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SCI_OBJECT_HANDLE_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_LOG_INFO (int ) ;
 int SCIC_LOG_OBJECT_PHY ;
 int SCI_BASE_PHY_STATE_STARTING ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int sci_base_state_machine_stop (int ) ;
 int scic_sds_phy_get_base_state_machine (int *) ;
 int scic_sds_phy_get_starting_substate_machine (int *) ;

void scic_sds_phy_sata_timeout( SCI_OBJECT_HANDLE_T cookie)
{
   SCIC_SDS_PHY_T * this_phy = (SCIC_SDS_PHY_T *)cookie;

   SCIC_LOG_INFO((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "SCIC SDS Phy 0x%x did not receive signature fis before timeout.\n",
      this_phy
   ));

   sci_base_state_machine_stop(
      scic_sds_phy_get_starting_substate_machine(this_phy));

   sci_base_state_machine_change_state(
      scic_sds_phy_get_base_state_machine(this_phy),
      SCI_BASE_PHY_STATE_STARTING
   );
}
