
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_8__ {int remote_device_list; } ;
struct TYPE_7__ {scalar_t__ expander_phy_identifier; struct TYPE_7__* containing_device; } ;
typedef int SCI_ABSTRACT_ELEMENT_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int ASSERT (int ) ;
 TYPE_1__* SCI_INVALID_HANDLE ;
 int * sci_abstract_list_get_front (int *) ;
 int * sci_abstract_list_get_next (int *) ;
 scalar_t__ sci_abstract_list_get_object (int *) ;

SCIF_SAS_REMOTE_DEVICE_T * scif_sas_domain_get_device_by_containing_device(
   SCIF_SAS_DOMAIN_T * fw_domain,
   SCIF_SAS_REMOTE_DEVICE_T * containing_device,
   U8 expander_phy_id
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device;
   SCI_ABSTRACT_ELEMENT_T * element = sci_abstract_list_get_front(
                                         &fw_domain->remote_device_list
                                      );


   ASSERT(containing_device != ((void*)0));



   while (element != ((void*)0))
   {
      fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                  sci_abstract_list_get_object(element);


      if (
            (fw_device->containing_device == containing_device)
         && (fw_device->expander_phy_identifier == expander_phy_id)
         )
      {
         return fw_device;
      }

      element = sci_abstract_list_get_next(element);
   }

   return SCI_INVALID_HANDLE;
}
