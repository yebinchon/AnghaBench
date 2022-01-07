
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int remote_device_list; } ;
struct TYPE_6__ {int * ea_target_reset_request_scheduled; } ;
typedef int SCI_ABSTRACT_ELEMENT_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_TRACE (int ) ;
 int * sci_abstract_list_get_front (int *) ;
 int * sci_abstract_list_get_next (int *) ;
 scalar_t__ sci_abstract_list_get_object (int *) ;
 int sci_base_object_get_logger (TYPE_2__*) ;

SCIF_SAS_REMOTE_DEVICE_T * scif_sas_domain_find_next_ea_target_reset(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCI_ABSTRACT_ELEMENT_T * current_element;
   SCIF_SAS_REMOTE_DEVICE_T * current_device;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "scif_sas_domain_find_next_ea_target_reset(0x%x) enter\n",
      fw_domain
   ));


   current_element = sci_abstract_list_get_front(&fw_domain->remote_device_list);
   while (current_element != ((void*)0) )
   {
      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                       sci_abstract_list_get_object(current_element);

      current_element = sci_abstract_list_get_next(current_element);

      if ( current_device->ea_target_reset_request_scheduled != ((void*)0) )
      {
         return current_device;
      }
   }

   return ((void*)0);
}
