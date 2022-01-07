
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * sata_timeout_timer; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_PHY_T ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;


 int SCI_BASE_PHY_STATE_STARTING ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int * scic_cb_timer_create (int ,int ,TYPE_1__*) ;
 int scic_sds_phy_get_base_state_machine (TYPE_1__*) ;
 int scic_sds_phy_get_controller (TYPE_1__*) ;
 int scic_sds_phy_sata_timeout ;

__attribute__((used)) static
SCI_STATUS scic_sds_phy_stopped_state_start_handler(
   SCI_BASE_PHY_T *phy
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)phy;




   this_phy->sata_timeout_timer = scic_cb_timer_create(
      scic_sds_phy_get_controller(this_phy),
      scic_sds_phy_sata_timeout,
      this_phy
   );

   if (this_phy->sata_timeout_timer != ((void*)0))
   {
      sci_base_state_machine_change_state(
         scic_sds_phy_get_base_state_machine(this_phy),
         SCI_BASE_PHY_STATE_STARTING
      );
   }

   return SCI_SUCCESS;
}
