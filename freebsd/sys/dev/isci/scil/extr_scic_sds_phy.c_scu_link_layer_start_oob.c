
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCIC_SDS_PHY_T ;


 int HARD_RESET ;
 int OOB_ENABLE ;
 int OOB_RESET ;
 int SCU_SAS_PCFG_GEN_BIT (int ) ;
 int SCU_SAS_PCFG_READ (int *) ;
 int SCU_SAS_PCFG_WRITE (int *,int) ;

__attribute__((used)) static
void scu_link_layer_start_oob(
   SCIC_SDS_PHY_T *this_phy
)
{
   U32 scu_sas_pcfg_value;


   scu_sas_pcfg_value = SCU_SAS_PCFG_READ(this_phy);
   scu_sas_pcfg_value &=
      ~(SCU_SAS_PCFG_GEN_BIT(OOB_RESET) | SCU_SAS_PCFG_GEN_BIT(HARD_RESET));
   SCU_SAS_PCFG_WRITE(this_phy, scu_sas_pcfg_value);
   SCU_SAS_PCFG_READ(this_phy);



   scu_sas_pcfg_value = SCU_SAS_PCFG_READ(this_phy);
   scu_sas_pcfg_value |= SCU_SAS_PCFG_GEN_BIT(OOB_ENABLE);
   SCU_SAS_PCFG_WRITE(this_phy, scu_sas_pcfg_value);
   SCU_SAS_PCFG_READ(this_phy);

}
