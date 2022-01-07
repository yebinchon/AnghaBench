
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int low; int high; } ;
typedef TYPE_1__ SCI_SAS_ADDRESS_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_TRACE (int ) ;
 int SCU_SAS_TISSAH_READ (int *) ;
 int SCU_SAS_TISSAL_READ (int *) ;
 int sci_base_object_get_logger (int *) ;

void scic_sds_phy_get_sas_address(
   SCIC_SDS_PHY_T *this_phy,
   SCI_SAS_ADDRESS_T *sas_address
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sds_phy_get_sas_address(this_phy:0x%x, sas_address:0x%x)\n",
      this_phy, sas_address
   ));

   sas_address->high = SCU_SAS_TISSAH_READ(this_phy);
   sas_address->low = SCU_SAS_TISSAL_READ(this_phy);
}
