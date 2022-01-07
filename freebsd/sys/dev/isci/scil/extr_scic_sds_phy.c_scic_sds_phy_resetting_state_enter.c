
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state_machine; } ;
struct TYPE_7__ {scalar_t__ protocol; TYPE_1__ parent; int owning_port; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIC_SDS_PHY_T ;


 int FALSE ;
 scalar_t__ SCIC_SDS_PHY_PROTOCOL_SAS ;
 int SCI_BASE_PHY_STATE_RESETTING ;
 int SCI_BASE_PHY_STATE_STARTING ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_phy_set_base_state_handlers (TYPE_2__*,int ) ;
 int scic_sds_port_deactivate_phy (int ,TYPE_2__*,int ) ;
 int scu_link_layer_tx_hard_reset (TYPE_2__*) ;

__attribute__((used)) static
void scic_sds_phy_resetting_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T * this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;

   scic_sds_phy_set_base_state_handlers(this_phy, SCI_BASE_PHY_STATE_RESETTING);




   scic_sds_port_deactivate_phy(this_phy->owning_port, this_phy, FALSE);

   if (this_phy->protocol == SCIC_SDS_PHY_PROTOCOL_SAS)
   {
      scu_link_layer_tx_hard_reset(this_phy);
   }
   else
   {


      sci_base_state_machine_change_state(
         &this_phy->parent.state_machine,
         SCI_BASE_PHY_STATE_STARTING
      );
   }
}
