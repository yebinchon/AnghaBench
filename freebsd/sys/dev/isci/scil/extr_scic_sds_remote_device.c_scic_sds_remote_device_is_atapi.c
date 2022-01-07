
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int sector_count; int lba_low; int lba_mid; int lba_high; int device; } ;
struct TYPE_13__ {TYPE_6__ signature_fis; } ;
struct TYPE_9__ {int attached_stp_target; } ;
struct TYPE_10__ {TYPE_1__ bits; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
struct TYPE_12__ {int owning_port; scalar_t__ is_direct_attached; TYPE_3__ target_protocols; } ;
typedef TYPE_4__ SCIC_SDS_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_PHY_T ;
typedef TYPE_5__ SCIC_SATA_PHY_PROPERTIES_T ;
typedef TYPE_6__ SATA_FIS_REG_D2H_T ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int scic_sata_phy_get_properties (int *,TYPE_5__*) ;
 int * scic_sds_port_get_a_connected_phy (int ) ;

BOOL scic_sds_remote_device_is_atapi(
   SCIC_SDS_REMOTE_DEVICE_T * this_device
)
{
   if (!this_device->target_protocols.u.bits.attached_stp_target)
      return FALSE;
   else if (this_device->is_direct_attached)
   {
      SCIC_SDS_PHY_T * phy;
      SCIC_SATA_PHY_PROPERTIES_T properties;
      SATA_FIS_REG_D2H_T * signature_fis;
      phy = scic_sds_port_get_a_connected_phy(this_device->owning_port);
      scic_sata_phy_get_properties(phy, &properties);


      signature_fis = &(properties.signature_fis);

      if ( (signature_fis->sector_count == 0x01)
          && (signature_fis->lba_low == 0x01)
          && (signature_fis->lba_mid == 0x14)
          && (signature_fis->lba_high == 0xEB)
          && ( (signature_fis->device & 0x5F) == 0x00)
         )
      {

         return TRUE;
      }
      else
         return FALSE;
   }
   else
   {

      return FALSE;
   }
}
