
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_PHY_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCI_BASE_PHY_STATE_RESETTING ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_phy_get_base_state_machine (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_phy_ready_state_reset_handler(
   SCI_BASE_PHY_T * phy
)
{
   SCIC_SDS_PHY_T * this_phy;
   this_phy = (SCIC_SDS_PHY_T *)phy;

   sci_base_state_machine_change_state(
      scic_sds_phy_get_base_state_machine(this_phy),
      SCI_BASE_PHY_STATE_RESETTING
   );

   return SCI_SUCCESS;
}
