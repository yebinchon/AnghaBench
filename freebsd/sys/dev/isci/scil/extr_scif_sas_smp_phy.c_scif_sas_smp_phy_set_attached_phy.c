
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_7__ {int smp_device; } ;
struct TYPE_10__ {TYPE_1__ protocol_device; } ;
struct TYPE_8__ {TYPE_3__* attached_phy; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef int SCI_STATUS ;
typedef TYPE_3__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCI_FAILURE ;
 int SCI_SUCCESS ;
 scalar_t__ scif_sas_smp_remote_device_find_smp_phy_by_id (int ,int *) ;

SCI_STATUS scif_sas_smp_phy_set_attached_phy(
   SCIF_SAS_SMP_PHY_T * this_smp_phy,
   U8 attached_phy_identifier,
   SCIF_SAS_REMOTE_DEVICE_T * attached_remote_device
)
{

   SCIF_SAS_SMP_PHY_T * attached_smp_phy =
      (SCIF_SAS_SMP_PHY_T *)scif_sas_smp_remote_device_find_smp_phy_by_id(
          attached_phy_identifier,
          &attached_remote_device->protocol_device.smp_device);

   if (attached_smp_phy != ((void*)0))
   {
      this_smp_phy->u.attached_phy = attached_smp_phy;
      attached_smp_phy->u.attached_phy = this_smp_phy;

      return SCI_SUCCESS;
   }

   return SCI_FAILURE;
}
