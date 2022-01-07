
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_8__ {scalar_t__ number_of_phys; } ;
struct TYPE_9__ {TYPE_1__ smp_device; } ;
struct TYPE_11__ {TYPE_3__* domain; TYPE_2__ protocol_device; } ;
struct TYPE_10__ {int controller; } ;
typedef int SCIF_SAS_SMP_PHY_T ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;


 int ASSERT (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_4__*) ;
 int * scif_sas_controller_allocate_smp_phy (int ) ;
 int scif_sas_smp_phy_construct (int *,TYPE_4__*,scalar_t__) ;

void scif_sas_smp_remote_device_populate_smp_phy_list(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_SAS_SMP_PHY_T * this_smp_phy = ((void*)0);
   U8 expander_phy_id = 0;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_populate_smp_phy_list(0x%x) enter\n",
      fw_device
   ));

   for ( expander_phy_id = 0;
         expander_phy_id < fw_device->protocol_device.smp_device.number_of_phys;
         expander_phy_id++ )
   {
      this_smp_phy =
         scif_sas_controller_allocate_smp_phy(fw_device->domain->controller);

      ASSERT( this_smp_phy != ((void*)0) );

      if ( this_smp_phy != ((void*)0) )
         scif_sas_smp_phy_construct(this_smp_phy, fw_device, expander_phy_id);
   }
}
