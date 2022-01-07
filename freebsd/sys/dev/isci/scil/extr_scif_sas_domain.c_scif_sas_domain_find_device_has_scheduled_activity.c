
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_17__ {int remote_device_list; } ;
struct TYPE_11__ {scalar_t__ scheduled_activity; } ;
struct TYPE_12__ {TYPE_1__ smp_device; } ;
struct TYPE_16__ {TYPE_2__ protocol_device; int core_object; } ;
struct TYPE_13__ {scalar_t__ attached_smp_target; } ;
struct TYPE_14__ {TYPE_3__ bits; } ;
struct TYPE_15__ {TYPE_4__ u; } ;
typedef TYPE_5__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef int SCI_ABSTRACT_ELEMENT_T ;
typedef TYPE_6__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_7__ SCIF_SAS_DOMAIN_T ;


 int * sci_abstract_list_get_front (int *) ;
 int * sci_abstract_list_get_next (int *) ;
 scalar_t__ sci_abstract_list_get_object (int *) ;
 int scic_remote_device_get_protocols (int ,TYPE_5__*) ;

SCIF_SAS_REMOTE_DEVICE_T * scif_sas_domain_find_device_has_scheduled_activity(
   SCIF_SAS_DOMAIN_T * fw_domain,
   U8 smp_activity
)
{
   SCI_ABSTRACT_ELEMENT_T * current_element =
      sci_abstract_list_get_front(&fw_domain->remote_device_list);

   SCIF_SAS_REMOTE_DEVICE_T * current_device;
   SMP_DISCOVER_RESPONSE_PROTOCOLS_T dev_protocols;


   while ( current_element != ((void*)0) )
   {
      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                       sci_abstract_list_get_object(current_element);

      scic_remote_device_get_protocols(current_device->core_object,
                                       &dev_protocols);

      current_element =
         sci_abstract_list_get_next(current_element);

      if ( dev_protocols.u.bits.attached_smp_target
          && current_device->protocol_device.smp_device.scheduled_activity ==
                smp_activity)
      {
         return current_device;
      }
   }

   return ((void*)0);
}
