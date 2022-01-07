
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL ;
 int SCI_BASE_PHY_STATE_READY ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_phy_get_base_state_machine (int *) ;
 int scic_sds_phy_set_starting_substate_handlers (int *,int ) ;

__attribute__((used)) static
void scic_sds_phy_starting_final_substate_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;

   scic_sds_phy_set_starting_substate_handlers(
      this_phy, SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL
      );



   sci_base_state_machine_change_state(
      scic_sds_phy_get_base_state_machine(this_phy),
      SCI_BASE_PHY_STATE_READY);
}
