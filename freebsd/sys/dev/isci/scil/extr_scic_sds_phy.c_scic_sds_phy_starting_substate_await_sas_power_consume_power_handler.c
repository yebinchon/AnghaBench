
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_PHY_T ;


 int ENABLE ;
 int SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL ;
 int SCI_SUCCESS ;
 int SCU_ENSPINUP_GEN_BIT (int ) ;
 int SCU_SAS_ENSPINUP_READ (int *) ;
 int SCU_SAS_ENSPINUP_WRITE (int *,int ) ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_phy_get_starting_substate_machine (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_phy_starting_substate_await_sas_power_consume_power_handler(
   SCIC_SDS_PHY_T *this_phy
)
{
   U32 enable_spinup;

   enable_spinup = SCU_SAS_ENSPINUP_READ(this_phy);
   enable_spinup |= SCU_ENSPINUP_GEN_BIT(ENABLE);
   SCU_SAS_ENSPINUP_WRITE(this_phy, enable_spinup);


   sci_base_state_machine_change_state(
      scic_sds_phy_get_starting_substate_machine(this_phy),
      SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL
      );

   return SCI_SUCCESS;
}
