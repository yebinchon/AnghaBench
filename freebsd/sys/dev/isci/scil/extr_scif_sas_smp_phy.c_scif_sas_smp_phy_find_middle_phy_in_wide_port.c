
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCIF_SAS_SMP_PHY_T ;


 int * scif_sas_smp_phy_find_next_phy_in_wide_port (int *) ;

SCIF_SAS_SMP_PHY_T * scif_sas_smp_phy_find_middle_phy_in_wide_port(
   SCIF_SAS_SMP_PHY_T * this_smp_phy
)
{
   SCIF_SAS_SMP_PHY_T * next_phy =
      scif_sas_smp_phy_find_next_phy_in_wide_port(this_smp_phy);
   SCIF_SAS_SMP_PHY_T * middle_phy = this_smp_phy;




   if (next_phy != ((void*)0))
   {
      middle_phy = next_phy;
      next_phy =
         scif_sas_smp_phy_find_next_phy_in_wide_port(next_phy);
   }

   if (next_phy != ((void*)0))
      middle_phy = next_phy;

   return middle_phy;
}
