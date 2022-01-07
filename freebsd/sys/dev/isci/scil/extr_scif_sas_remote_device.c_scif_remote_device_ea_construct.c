
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_29__ {int high; int low; } ;
struct TYPE_23__ {scalar_t__ attached_stp_target; scalar_t__ attached_smp_target; } ;
struct TYPE_24__ {TYPE_3__ bits; } ;
struct TYPE_25__ {TYPE_4__ u; } ;
struct TYPE_28__ {TYPE_5__ protocols; TYPE_9__ attached_sas_address; } ;
struct TYPE_26__ {scalar_t__ (* start_handler ) (int *) ;} ;
struct TYPE_27__ {TYPE_6__ parent; } ;
struct TYPE_21__ {int current_activity_phy_index; } ;
struct TYPE_22__ {TYPE_1__ smp_device; } ;
struct TYPE_20__ {int remote_device_list; } ;
struct TYPE_19__ {TYPE_14__* domain; int parent; TYPE_7__* state_handlers; int core_object; TYPE_2__ protocol_device; int expander_phy_identifier; struct TYPE_19__* containing_device; } ;
typedef TYPE_8__ SMP_RESPONSE_DISCOVER_T ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_9__ SCI_SAS_ADDRESS_T ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef TYPE_10__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_LOG_WARNING (int ) ;
 scalar_t__ SCI_FAILURE_DEVICE_EXISTS ;
 scalar_t__ SCI_INVALID_HANDLE ;
 scalar_t__ SCI_SATA_SPINUP_HOLD ;
 scalar_t__ SCI_SUCCESS ;
 int sci_abstract_list_pushback (int *,TYPE_10__*) ;
 int sci_base_object_get_logger (TYPE_10__*) ;
 scalar_t__ scic_remote_device_ea_construct (int ,TYPE_8__*) ;
 scalar_t__ scic_remote_device_get_connection_rate (int ) ;
 scalar_t__ scif_domain_get_device_by_sas_address (TYPE_14__*,TYPE_9__*) ;
 int scif_sas_smp_remote_device_construct (TYPE_10__*) ;
 int scif_sas_stp_remote_device_construct (TYPE_10__*) ;
 scalar_t__ stub1 (int *) ;

SCI_STATUS scif_remote_device_ea_construct(
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_REMOTE_DEVICE_HANDLE_T containing_device,
   SMP_RESPONSE_DISCOVER_T * smp_response
)
{
   SCI_SAS_ADDRESS_T * sas_address;
   SCI_STATUS status = SCI_SUCCESS;
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                                              remote_device;
   SCIF_SAS_REMOTE_DEVICE_T * fw_smp_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                                              containing_device;

   fw_device->containing_device = fw_smp_device;
   fw_device->expander_phy_identifier =
      fw_smp_device->protocol_device.smp_device.current_activity_phy_index;

   sas_address = &smp_response->attached_sas_address;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "scif_remote_device_ea_construct(0x%x, 0x%x) enter\n",
      remote_device, smp_response
   ));



   if (scif_domain_get_device_by_sas_address(fw_device->domain, sas_address)
       == SCI_INVALID_HANDLE)
   {


      status = scic_remote_device_ea_construct(fw_device->core_object, smp_response);
   }
   else
      status = SCI_FAILURE_DEVICE_EXISTS;

   if (status == SCI_SUCCESS)
   {

      sci_abstract_list_pushback(
         &fw_device->domain->remote_device_list, fw_device
      );

      if (smp_response->protocols.u.bits.attached_smp_target)
         scif_sas_smp_remote_device_construct(fw_device);
      else if (smp_response->protocols.u.bits.attached_stp_target)
         scif_sas_stp_remote_device_construct(fw_device);

      SCIF_LOG_INFO((
         sci_base_object_get_logger(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
         "Domain:0x%x SasAddress:0x%x,0x%x remote device constructed\n",
         fw_device->domain, sas_address->low, sas_address->high
      ));


      if ( scic_remote_device_get_connection_rate(fw_device->core_object) !=
              SCI_SATA_SPINUP_HOLD )
      {
          status = fw_device->state_handlers->parent.start_handler(
                      &fw_device->parent
                   );
      }
   }
   else
   {
      SCIF_LOG_WARNING((
         sci_base_object_get_logger(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
         "Domain:0x%x SasAddress:0x%x,0x%x Status:0x%x remote device construct failure\n",
         fw_device->domain, sas_address->low, sas_address->high, status
      ));
   }

   return status;
}
