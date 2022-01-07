
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int state_machine; } ;
struct TYPE_10__ {TYPE_1__ parent; int controller; int remote_device_list; } ;
struct TYPE_9__ {scalar_t__ is_currently_discovered; } ;
typedef int SCI_ABSTRACT_ELEMENT_T ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_3__ SCIF_SAS_DOMAIN_T ;


 scalar_t__ FALSE ;
 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_BASE_DOMAIN_STATE_READY ;
 int * sci_abstract_list_get_front (int *) ;
 int * sci_abstract_list_get_next (int *) ;
 scalar_t__ sci_abstract_list_get_object (int *) ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scif_cb_domain_device_removed (int ,TYPE_3__*,TYPE_2__*) ;

void scif_sas_domain_finish_discover(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCIF_SAS_REMOTE_DEVICE_T * current_device = ((void*)0);
   SCI_ABSTRACT_ELEMENT_T * current_element = ((void*)0);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_finish_discover(0x%x) enter\n",
      fw_domain
   ));




   current_element = sci_abstract_list_get_front(&fw_domain->remote_device_list);
   while (current_element != ((void*)0) )
   {
      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                          sci_abstract_list_get_object(current_element);




      current_element = sci_abstract_list_get_next(current_element);

      if ( current_device->is_currently_discovered == FALSE )
      {

         scif_cb_domain_device_removed(
            fw_domain->controller, fw_domain, current_device
         );
      }
   }

   sci_base_state_machine_change_state(
      &fw_domain->parent.state_machine, SCI_BASE_DOMAIN_STATE_READY
   );
}
