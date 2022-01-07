
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCIC_SDS_PHY_T ;


 int CLEAR_TCI_NCQ_MAPPING_TABLE ;
 int SCU_STPTLDARNI_WRITE (int *,int ) ;
 int SCU_TLCR_GEN_BIT (int ) ;
 int SCU_TLCR_READ (int *) ;
 int SCU_TLCR_WRITE (int *,int ) ;

void scic_sds_phy_setup_transport(
   SCIC_SDS_PHY_T * this_phy,
   U32 device_id
)
{
   U32 tl_control;

   SCU_STPTLDARNI_WRITE(this_phy, device_id);



   tl_control = SCU_TLCR_READ(this_phy);
   tl_control |= SCU_TLCR_GEN_BIT(CLEAR_TCI_NCQ_MAPPING_TABLE);
   SCU_TLCR_WRITE(this_phy, tl_control);
}
