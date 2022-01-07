
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_16__ ;
typedef struct TYPE_29__ TYPE_15__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct TYPE_39__ {scalar_t__ attached_device_type; scalar_t__ negotiated_physical_link_rate; } ;
struct TYPE_37__ {int current_activity_phy_index; } ;
struct TYPE_38__ {TYPE_7__ smp_device; } ;
struct TYPE_34__ {scalar_t__ attached_sata_device; scalar_t__ attached_stp_target; } ;
struct TYPE_35__ {TYPE_4__ bits; } ;
struct TYPE_36__ {TYPE_5__ u; } ;
struct TYPE_32__ {scalar_t__ negotiated_physical_link_rate; } ;
struct TYPE_33__ {TYPE_2__ sas2; } ;
struct TYPE_24__ {TYPE_9__ sas1_1; } ;
struct TYPE_29__ {TYPE_10__ u2; TYPE_6__ protocols; TYPE_3__ u4; } ;
struct TYPE_31__ {TYPE_15__ discover; } ;
struct TYPE_30__ {int parent; TYPE_12__* state_handlers; int core_object; TYPE_8__ protocol_device; int domain; } ;
struct TYPE_28__ {scalar_t__ function_result; } ;
struct TYPE_27__ {TYPE_14__ header; TYPE_1__ response; } ;
struct TYPE_25__ {int (* start_handler ) (int *) ;} ;
struct TYPE_26__ {TYPE_11__ parent; } ;
typedef TYPE_13__ SMP_RESPONSE_T ;
typedef TYPE_14__ SMP_RESPONSE_HEADER_T ;
typedef TYPE_15__ SMP_RESPONSE_DISCOVER_T ;
typedef int SCI_STATUS ;
typedef TYPE_16__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 int SCI_FAILURE_RETRY_REQUIRED ;
 scalar_t__ SCI_SATA_SPINUP_HOLD ;
 scalar_t__ SMP_NO_DEVICE_ATTACHED ;
 scalar_t__ SMP_RESULT_FUNCTION_ACCEPTED ;
 int sci_base_object_get_logger (TYPE_16__*) ;
 int scic_remote_device_set_max_connection_rate (int ,scalar_t__) ;
 TYPE_16__* scif_sas_domain_get_device_by_containing_device (int ,TYPE_16__*,int ) ;
 int scif_sas_smp_remote_device_save_smp_phy_info (TYPE_16__*,TYPE_15__*) ;
 int stub1 (int *) ;

SCI_STATUS scif_sas_smp_remote_device_decode_spinup_hold_release_discover_response(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SMP_RESPONSE_T * smp_response
)
{
   SMP_RESPONSE_DISCOVER_T * discover_response = &smp_response->response.discover;

   SMP_RESPONSE_HEADER_T * response_header = &smp_response->header;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_decode_spinup_hold_release_discover_response(0x%x, 0x%x) enter\n",
      fw_device, smp_response
   ));

   if (response_header->function_result != SMP_RESULT_FUNCTION_ACCEPTED)
   {



      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
         "Discover function result(0x%x)\n",
         response_header->function_result
      ));

      return SCI_FAILURE;
   }

   if ( discover_response->u2.sas1_1.attached_device_type != SMP_NO_DEVICE_ATTACHED )
   {
      if (discover_response->u2.sas1_1.negotiated_physical_link_rate != SCI_SATA_SPINUP_HOLD
          && discover_response->u4.sas2.negotiated_physical_link_rate != SCI_SATA_SPINUP_HOLD
          && ( discover_response->protocols.u.bits.attached_stp_target
             ||discover_response->protocols.u.bits.attached_sata_device )
         )
      {
         SCIF_SAS_REMOTE_DEVICE_T * target_device =
            scif_sas_domain_get_device_by_containing_device(
               fw_device->domain,
               fw_device,
               fw_device->protocol_device.smp_device.current_activity_phy_index
            );


         scic_remote_device_set_max_connection_rate(
            target_device->core_object,
            discover_response->u2.sas1_1.negotiated_physical_link_rate
         );


         scif_sas_smp_remote_device_save_smp_phy_info(
             fw_device, discover_response);



         return target_device->state_handlers->parent.start_handler(
                   &target_device->parent );
      }
      else
         return SCI_FAILURE_RETRY_REQUIRED;
   }
   else
      return SCI_FAILURE_RETRY_REQUIRED;
}
