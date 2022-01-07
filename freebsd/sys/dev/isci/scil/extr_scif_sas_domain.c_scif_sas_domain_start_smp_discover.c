
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int remote_device_list; } ;
struct TYPE_6__ {int device_port_width; int is_currently_discovered; int * containing_device; } ;
typedef int SCI_ABSTRACT_ELEMENT_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int FALSE ;
 int TRUE ;
 int * sci_abstract_list_get_front (int *) ;
 int * sci_abstract_list_get_next (int *) ;
 scalar_t__ sci_abstract_list_get_object (int *) ;
 int scif_sas_smp_remote_device_start_discover (TYPE_1__*) ;

void scif_sas_domain_start_smp_discover(
   SCIF_SAS_DOMAIN_T * fw_domain,
   SCIF_SAS_REMOTE_DEVICE_T * top_expander
)
{
   SCI_ABSTRACT_ELEMENT_T * current_element =
       sci_abstract_list_get_front(&fw_domain->remote_device_list);

   SCIF_SAS_REMOTE_DEVICE_T * current_device;




   while ( current_element != ((void*)0) )
   {
      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                           sci_abstract_list_get_object(current_element);

      current_device->is_currently_discovered = FALSE;


      if (current_device->containing_device != ((void*)0))
         current_device->device_port_width = 1;

      current_element = sci_abstract_list_get_next(current_element);
   }


   top_expander->is_currently_discovered = TRUE;


   scif_sas_smp_remote_device_start_discover(top_expander);
}
