
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {TYPE_2__* controller; int remote_device_list; } ;
struct TYPE_15__ {int core_object; } ;
struct TYPE_13__ {scalar_t__ attached_smp_target; } ;
struct TYPE_11__ {TYPE_3__ bits; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
struct TYPE_12__ {int hprq; } ;
typedef TYPE_4__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef int SCI_ABSTRACT_ELEMENT_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_6__ SCIF_SAS_DOMAIN_T ;


 int * sci_abstract_list_get_front (int *) ;
 int * sci_abstract_list_get_next (int *) ;
 scalar_t__ sci_abstract_list_get_object (int *) ;
 int scic_remote_device_get_protocols (int ,TYPE_4__*) ;
 int scif_sas_high_priority_request_queue_purge_domain (int *,TYPE_6__*) ;
 int scif_sas_smp_remote_device_cancel_smp_activity (TYPE_5__*) ;

void scif_sas_domain_cancel_smp_activities(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCI_ABSTRACT_ELEMENT_T * current_element =
      sci_abstract_list_get_front(&fw_domain->remote_device_list);

   SCIF_SAS_REMOTE_DEVICE_T * current_device;


   scif_sas_high_priority_request_queue_purge_domain(
      &fw_domain->controller->hprq, fw_domain
   );

   while ( current_element != ((void*)0) )
   {
      SMP_DISCOVER_RESPONSE_PROTOCOLS_T dev_protocols;

      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                       sci_abstract_list_get_object(current_element);

      scic_remote_device_get_protocols(current_device->core_object,
                                       &dev_protocols
      );

      if (dev_protocols.u.bits.attached_smp_target)
      {
         scif_sas_smp_remote_device_cancel_smp_activity(current_device);
      }

      current_element =
         sci_abstract_list_get_next(current_element);
   }
}
