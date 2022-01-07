
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int remote_device_list; } ;
struct TYPE_7__ {int state_machine; } ;
struct TYPE_8__ {int core_object; TYPE_1__ parent; } ;
typedef int SCI_ABSTRACT_ELEMENT_T ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_3__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ;
 scalar_t__ SCI_SATA_SPINUP_HOLD ;
 int * sci_abstract_list_get_front (int *) ;
 int * sci_abstract_list_get_next (int *) ;
 scalar_t__ sci_abstract_list_get_object (int *) ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 scalar_t__ sci_base_state_machine_get_state (int *) ;
 scalar_t__ scic_remote_device_get_connection_rate (int ) ;

SCIF_SAS_REMOTE_DEVICE_T * scif_sas_domain_find_device_in_spinup_hold(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCI_ABSTRACT_ELEMENT_T * current_element;
   SCIF_SAS_REMOTE_DEVICE_T * current_device;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "scif_sas_domain_find_device_in_spinup_hold(0x%x) enter\n",
      fw_domain
   ));


   current_element = sci_abstract_list_get_front(&fw_domain->remote_device_list);
   while (current_element != ((void*)0) )
   {
      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                       sci_abstract_list_get_object(current_element);




      current_element = sci_abstract_list_get_next(current_element);

      if ( sci_base_state_machine_get_state(&current_device->parent.state_machine) ==
              SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
          && scic_remote_device_get_connection_rate(current_device->core_object) ==
                SCI_SATA_SPINUP_HOLD )
      {
         return current_device;
      }
   }

   return ((void*)0);
}
