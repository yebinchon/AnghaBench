
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_17__ {scalar_t__ current_state_id; } ;
struct TYPE_16__ {TYPE_1__ state_machine; } ;
struct TYPE_25__ {TYPE_10__ parent; TYPE_6__* state_handlers; int device_start_in_progress_count; } ;
struct TYPE_20__ {int scheduled_activity; } ;
struct TYPE_21__ {TYPE_4__ smp_device; } ;
struct TYPE_24__ {int parent; TYPE_5__ protocol_device; int * containing_device; int core_object; } ;
struct TYPE_18__ {scalar_t__ attached_smp_target; } ;
struct TYPE_19__ {TYPE_2__ bits; } ;
struct TYPE_23__ {TYPE_3__ u; } ;
struct TYPE_22__ {int (* device_start_complete_handler ) (TYPE_10__*,int *) ;} ;
typedef TYPE_7__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef TYPE_8__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_9__ SCIF_SAS_DOMAIN_T ;


 int ASSERT (int) ;
 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER ;
 scalar_t__ SCI_BASE_DOMAIN_STATE_DISCOVERING ;
 int sci_base_object_get_logger (TYPE_9__*) ;
 int scic_remote_device_get_protocols (int ,TYPE_7__*) ;
 int scif_sas_smp_remote_device_start_discover (TYPE_8__*) ;
 int stub1 (TYPE_10__*,int *) ;

void scif_sas_domain_remote_device_start_complete(
   SCIF_SAS_DOMAIN_T * fw_domain,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SMP_DISCOVER_RESPONSE_PROTOCOLS_T dev_protocols;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_remote_device_start_complete(0x%x, 0x%x) enter\n",
      fw_domain, fw_device
   ));



   ASSERT(fw_domain->parent.state_machine.current_state_id
          == SCI_BASE_DOMAIN_STATE_DISCOVERING);

   scic_remote_device_get_protocols(fw_device->core_object, &dev_protocols);



   fw_domain->device_start_in_progress_count--;

   if ( dev_protocols.u.bits.attached_smp_target )
   {
      if ( fw_device->containing_device == ((void*)0) )

         scif_sas_smp_remote_device_start_discover(fw_device);
      else


         fw_device->protocol_device.smp_device.scheduled_activity =
            SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER;
   }
   else
   {
      fw_domain->state_handlers->device_start_complete_handler(
         &fw_domain->parent, &fw_device->parent
      );
   }
}
