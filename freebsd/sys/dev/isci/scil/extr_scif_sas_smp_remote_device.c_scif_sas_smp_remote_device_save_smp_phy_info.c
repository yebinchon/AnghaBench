
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int smp_device; } ;
struct TYPE_26__ {struct TYPE_26__* containing_device; int domain; TYPE_1__ protocol_device; } ;
struct TYPE_23__ {int attached_phy; } ;
struct TYPE_25__ {TYPE_5__ u; } ;
struct TYPE_20__ {scalar_t__ attached_smp_target; } ;
struct TYPE_21__ {TYPE_2__ bits; } ;
struct TYPE_22__ {TYPE_3__ u; } ;
struct TYPE_24__ {int attached_phy_identifier; TYPE_4__ protocols; int attached_sas_address; int phy_identifier; } ;
typedef TYPE_6__ SMP_RESPONSE_DISCOVER_T ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_7__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_8__ SCIF_SAS_REMOTE_DEVICE_T ;


 int ASSERT (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_FAILURE_ILLEGAL_ROUTING_ATTRIBUTE_CONFIGURATION ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_8__*) ;
 scalar_t__ scif_domain_get_device_by_sas_address (int ,int *) ;
 int scif_sas_smp_phy_save_information (TYPE_7__*,TYPE_8__*,TYPE_6__*) ;
 scalar_t__ scif_sas_smp_phy_set_attached_phy (TYPE_7__*,int ,TYPE_8__*) ;
 scalar_t__ scif_sas_smp_phy_verify_routing_attribute (TYPE_7__*,int ) ;
 TYPE_7__* scif_sas_smp_remote_device_find_smp_phy_by_id (int ,int *) ;

SCI_STATUS scif_sas_smp_remote_device_save_smp_phy_info(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SMP_RESPONSE_DISCOVER_T * discover_response
)
{
   SCI_STATUS status = SCI_SUCCESS;
   SCIF_SAS_SMP_PHY_T * smp_phy = ((void*)0);
   SCIF_SAS_REMOTE_DEVICE_T * attached_device = ((void*)0);

    SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_save_smp_phy_info(0x%x, 0x%x) enter\n",
      fw_device, discover_response
   ));

   smp_phy = scif_sas_smp_remote_device_find_smp_phy_by_id(
                discover_response->phy_identifier,
                &fw_device->protocol_device.smp_device
             );

   ASSERT( smp_phy != ((void*)0) );


   attached_device = (SCIF_SAS_REMOTE_DEVICE_T *)
      scif_domain_get_device_by_sas_address(
         fw_device->domain, &discover_response->attached_sas_address);

   scif_sas_smp_phy_save_information(
      smp_phy, attached_device, discover_response);


   if ( discover_response->protocols.u.bits.attached_smp_target )
   {


       if ( attached_device != ((void*)0)
           && attached_device == fw_device->containing_device )
       {


          status = scif_sas_smp_phy_set_attached_phy(
                      smp_phy,
                      discover_response->attached_phy_identifier,
                      attached_device
                   );

          if (status == SCI_SUCCESS)
          {


             if ( scif_sas_smp_phy_verify_routing_attribute(
                     smp_phy, smp_phy->u.attached_phy) != SCI_SUCCESS )
                return SCI_FAILURE_ILLEGAL_ROUTING_ATTRIBUTE_CONFIGURATION;
          }
       }
    }

    return status;
}
