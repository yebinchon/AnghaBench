
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_PHY_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCI_SUCCESS ;

__attribute__((used)) static
SCI_STATUS scic_sds_phy_stopped_state_destroy_handler(
   SCI_BASE_PHY_T *phy
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)phy;


   return SCI_SUCCESS;
}
