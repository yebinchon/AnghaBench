
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* end_device; } ;
struct TYPE_15__ {scalar_t__ attached_device_type; TYPE_2__ u; int list_element; } ;
struct TYPE_12__ {scalar_t__ attached_stp_target; } ;
struct TYPE_13__ {TYPE_3__ bits; } ;
struct TYPE_14__ {TYPE_4__ u; } ;
struct TYPE_10__ {int core_object; } ;
typedef TYPE_5__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef TYPE_6__ SCIF_SAS_SMP_PHY_T ;


 scalar_t__ SMP_END_DEVICE_ONLY ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 int scic_remote_device_get_protocols (int ,TYPE_5__*) ;

__attribute__((used)) static
SCIF_SAS_SMP_PHY_T * scif_sas_smp_remote_device_find_next_smp_phy_link_to_sata(
   SCIF_SAS_SMP_PHY_T * anchor_phy
)
{
   SCI_FAST_LIST_ELEMENT_T * element = &anchor_phy->list_element;
   SCIF_SAS_SMP_PHY_T * curr_smp_phy = ((void*)0);

   while (element != ((void*)0))
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) sci_fast_list_get_object(element);
      element = sci_fast_list_get_next(element);

      if (curr_smp_phy->attached_device_type == SMP_END_DEVICE_ONLY
          && curr_smp_phy->u.end_device != ((void*)0))
      {
         SMP_DISCOVER_RESPONSE_PROTOCOLS_T dev_protocols;
         scic_remote_device_get_protocols(
            curr_smp_phy->u.end_device->core_object, &dev_protocols);

         if (dev_protocols.u.bits.attached_stp_target)
            return curr_smp_phy;
      }
   }

   return ((void*)0);
}
