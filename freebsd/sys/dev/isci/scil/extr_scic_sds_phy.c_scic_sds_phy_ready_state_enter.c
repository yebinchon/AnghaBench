
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCI_BASE_PHY_STATE_READY ;
 int scic_sds_controller_link_up (int ,int ,int *) ;
 int scic_sds_phy_get_controller (int *) ;
 int scic_sds_phy_get_port (int *) ;
 int scic_sds_phy_set_base_state_handlers (int *,int ) ;

__attribute__((used)) static
void scic_sds_phy_ready_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;

   scic_sds_phy_set_base_state_handlers(this_phy, SCI_BASE_PHY_STATE_READY);

   scic_sds_controller_link_up(
      scic_sds_phy_get_controller(this_phy),
      scic_sds_phy_get_port(this_phy),
      this_phy
   );
}
