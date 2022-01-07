
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sata_timeout_timer; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;


 int SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SATA_SPEED_EN ;
 int SCIC_SDS_SATA_LINK_TRAINING_TIMEOUT ;
 int scic_cb_timer_start (int ,int ,int ) ;
 int scic_sds_phy_get_controller (TYPE_1__*) ;
 int scic_sds_phy_set_starting_substate_handlers (TYPE_1__*,int ) ;

__attribute__((used)) static
void scic_sds_phy_starting_await_sata_speed_substate_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;

   scic_sds_phy_set_starting_substate_handlers(
      this_phy, SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SATA_SPEED_EN
      );

   scic_cb_timer_start(
      scic_sds_phy_get_controller(this_phy),
      this_phy->sata_timeout_timer,
      SCIC_SDS_SATA_LINK_TRAINING_TIMEOUT
   );
}
