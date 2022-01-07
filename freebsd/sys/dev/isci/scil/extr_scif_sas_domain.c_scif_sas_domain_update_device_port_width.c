
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


typedef int U8 ;
struct TYPE_13__ {int sas_address; } ;
struct TYPE_16__ {int phy_mask; TYPE_3__ remote; } ;
struct TYPE_15__ {int core_object; } ;
struct TYPE_11__ {scalar_t__ attached_ssp_target; } ;
struct TYPE_12__ {TYPE_1__ bits; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
typedef TYPE_4__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef int SCI_PORT_HANDLE_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_DOMAIN_T ;
typedef TYPE_6__ SCIC_PORT_PROPERTIES_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_GET_BITS_SET_COUNT (int ,int ) ;
 TYPE_5__* SCI_INVALID_HANDLE ;
 int sci_base_object_get_logger (int *) ;
 int scic_port_get_properties (int ,TYPE_6__*) ;
 int scic_remote_device_get_protocols (int ,TYPE_4__*) ;
 scalar_t__ scif_domain_get_device_by_sas_address (int *,int *) ;
 int scif_sas_remote_device_update_port_width (TYPE_5__*,int ) ;

void scif_sas_domain_update_device_port_width(
   SCIF_SAS_DOMAIN_T * fw_domain,
   SCI_PORT_HANDLE_T port
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device;
   SCIC_PORT_PROPERTIES_T properties;
   U8 new_port_width = 0;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "scif_sas_domain_update_device_port_width(0x%x, 0x%x) enter\n",
      fw_domain, port
   ));

   scic_port_get_properties(port, &properties);

   fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                  scif_domain_get_device_by_sas_address(
                  fw_domain, &properties.remote.sas_address
               );



   if (fw_device != SCI_INVALID_HANDLE)
   {
      SMP_DISCOVER_RESPONSE_PROTOCOLS_T dev_protocols;
      scic_remote_device_get_protocols(fw_device->core_object, &dev_protocols);

      if (dev_protocols.u.bits.attached_ssp_target)
      {

         SCI_GET_BITS_SET_COUNT(properties.phy_mask, new_port_width);

         scif_sas_remote_device_update_port_width(fw_device, new_port_width);
      }
   }
}
