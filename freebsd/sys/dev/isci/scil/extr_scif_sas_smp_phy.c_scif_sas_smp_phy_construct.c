
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_9__ {int smp_phy_list; } ;
struct TYPE_10__ {TYPE_1__ smp_device; } ;
struct TYPE_12__ {TYPE_2__ protocol_device; } ;
struct TYPE_11__ {int list_element; TYPE_4__* owning_device; int phy_identifier; } ;
typedef TYPE_3__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;


 int memset (TYPE_3__*,int ,int) ;
 int sci_fast_list_element_init (TYPE_3__*,int *) ;
 int sci_fast_list_insert_tail (int *,int *) ;

void scif_sas_smp_phy_construct(
   SCIF_SAS_SMP_PHY_T * this_smp_phy,
   SCIF_SAS_REMOTE_DEVICE_T * owning_device,
   U8 expander_phy_id
)
{
   memset(this_smp_phy, 0, sizeof(SCIF_SAS_SMP_PHY_T));

   this_smp_phy->phy_identifier = expander_phy_id;
   this_smp_phy->owning_device = owning_device;

   sci_fast_list_element_init((this_smp_phy), (&this_smp_phy->list_element));


   sci_fast_list_insert_tail(
      (&owning_device->protocol_device.smp_device.smp_phy_list),
      (&this_smp_phy->list_element)
   );
}
