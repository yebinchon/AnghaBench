
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int protocol; int starting_substate_machine; } ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;


 int SCIC_SDS_PHY_PROTOCOL_SATA ;
 int SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SATA_POWER ;
 int sci_base_state_machine_change_state (int *,int ) ;

__attribute__((used)) static
void scic_sds_phy_start_sata_link_training(
   SCIC_SDS_PHY_T * this_phy
)
{
   sci_base_state_machine_change_state(
      &this_phy->starting_substate_machine,
      SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SATA_POWER
   );

   this_phy->protocol = SCIC_SDS_PHY_PROTOCOL_SATA;
}
