
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {int protocol; int starting_substate_machine; } ;
typedef TYPE_1__ SCIC_SDS_PHY_T ;


 int SATA_SPINUP_HOLD ;
 int SCIC_SDS_PHY_PROTOCOL_SAS ;
 int SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SAS_SPEED_EN ;
 int SCU_SAS_PCFG_GEN_BIT (int ) ;
 int SCU_SAS_PCFG_READ (TYPE_1__*) ;
 int SCU_SAS_PCFG_WRITE (TYPE_1__*,int ) ;
 int sci_base_state_machine_change_state (int *,int ) ;

__attribute__((used)) static
void scic_sds_phy_start_sas_link_training(
   SCIC_SDS_PHY_T * this_phy
)
{
   U32 phy_control;

   phy_control = SCU_SAS_PCFG_READ(this_phy);
   phy_control |= SCU_SAS_PCFG_GEN_BIT(SATA_SPINUP_HOLD);
   SCU_SAS_PCFG_WRITE(this_phy, phy_control);

   sci_base_state_machine_change_state(
      &this_phy->starting_substate_machine,
      SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SAS_SPEED_EN
   );

   this_phy->protocol = SCIC_SDS_PHY_PROTOCOL_SAS;
}
