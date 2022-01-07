
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_8__ {scalar_t__ phy_identifier; } ;
struct TYPE_6__ {scalar_t__ number_of_phys; int * list_head; } ;
struct TYPE_7__ {TYPE_1__ smp_phy_list; } ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef TYPE_2__ SCIF_SAS_SMP_REMOTE_DEVICE_T ;
typedef TYPE_3__ SCIF_SAS_SMP_PHY_T ;


 int ASSERT (int) ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;

SCIF_SAS_SMP_PHY_T * scif_sas_smp_remote_device_find_smp_phy_by_id(
   U8 phy_identifier,
   SCIF_SAS_SMP_REMOTE_DEVICE_T * smp_remote_device
)
{
   SCI_FAST_LIST_ELEMENT_T * element = smp_remote_device->smp_phy_list.list_head;
   SCIF_SAS_SMP_PHY_T * curr_smp_phy = ((void*)0);

   ASSERT(phy_identifier < smp_remote_device->smp_phy_list.number_of_phys);

   while (element != ((void*)0))
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) sci_fast_list_get_object(element);
      element = sci_fast_list_get_next(element);

      if (curr_smp_phy->phy_identifier == phy_identifier)
         return curr_smp_phy;
   }

   return ((void*)0);
}
