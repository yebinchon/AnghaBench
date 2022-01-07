
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ;
 int SCU_SAS_PCFG_GEN_BIT (int ) ;
 int SCU_SAS_PCFG_READ (int *) ;
 int SCU_SAS_PCFG_WRITE (int *,int ) ;
 int SUSPEND_PROTOCOL_ENGINE ;
 int scic_sds_phy_setup_transport (int *,int ) ;

void scic_sds_phy_suspend(
   SCIC_SDS_PHY_T * this_phy
)
{
   U32 scu_sas_pcfg_value;

   scu_sas_pcfg_value = SCU_SAS_PCFG_READ(this_phy);
   scu_sas_pcfg_value |= SCU_SAS_PCFG_GEN_BIT(SUSPEND_PROTOCOL_ENGINE);
   SCU_SAS_PCFG_WRITE(this_phy, scu_sas_pcfg_value);

   scic_sds_phy_setup_transport(
      this_phy, SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX
   );
}
