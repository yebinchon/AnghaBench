
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int is_in_link_training; int sata_timeout_timer; int owning_port; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SIG_FIS_UF ;
 int SCIC_SDS_SIGNATURE_FIS_TIMEOUT ;
 int scic_cb_timer_start (int ,int ,int ) ;
 int scic_sds_phy_get_controller (TYPE_1__*) ;
 int scic_sds_phy_resume (TYPE_1__*) ;
 int scic_sds_phy_set_starting_substate_handlers (TYPE_1__*,int ) ;
 scalar_t__ scic_sds_port_link_detected (int ,TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_phy_starting_await_sig_fis_uf_substate_enter(
   SCI_BASE_OBJECT_T *object
)
{
   BOOL continue_to_ready_state;
   SCIC_SDS_PHY_T * this_phy;

   this_phy = (SCIC_SDS_PHY_T *)object;

   scic_sds_phy_set_starting_substate_handlers(
      this_phy, SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SIG_FIS_UF
   );

   continue_to_ready_state = scic_sds_port_link_detected(
                                 this_phy->owning_port,
                                 this_phy
                             );

   if (continue_to_ready_state)
   {



      scic_sds_phy_resume(this_phy);

      scic_cb_timer_start(
         scic_sds_phy_get_controller(this_phy),
         this_phy->sata_timeout_timer,
         SCIC_SDS_SIGNATURE_FIS_TIMEOUT
      );
   }
   else
   {
      this_phy->is_in_link_training = FALSE;
   }
}
