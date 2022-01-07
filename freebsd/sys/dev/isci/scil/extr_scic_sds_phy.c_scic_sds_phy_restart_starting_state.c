
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCIC_SDS_PHY_T ;


 int SCI_BASE_PHY_STATE_STARTING ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int sci_base_state_machine_stop (int ) ;
 int scic_sds_phy_get_base_state_machine (int *) ;
 int scic_sds_phy_get_starting_substate_machine (int *) ;

void scic_sds_phy_restart_starting_state(
   SCIC_SDS_PHY_T *this_phy
)
{

   sci_base_state_machine_stop(
      scic_sds_phy_get_starting_substate_machine(this_phy)
   );


   sci_base_state_machine_change_state(
      scic_sds_phy_get_base_state_machine(this_phy),
      SCI_BASE_PHY_STATE_STARTING
      );
}
