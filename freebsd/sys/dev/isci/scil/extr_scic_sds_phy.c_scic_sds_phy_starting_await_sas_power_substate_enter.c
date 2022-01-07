
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SAS_POWER ;
 int scic_sds_controller_power_control_queue_insert (int ,int *) ;
 int scic_sds_phy_get_controller (int *) ;
 int scic_sds_phy_set_starting_substate_handlers (int *,int ) ;

__attribute__((used)) static
void scic_sds_phy_starting_await_sas_power_substate_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;

   scic_sds_phy_set_starting_substate_handlers(
      this_phy, SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SAS_POWER
      );

   scic_sds_controller_power_control_queue_insert(
      scic_sds_phy_get_controller(this_phy),
      this_phy
      );
}
