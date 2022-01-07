
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ U8 ;
typedef int U32 ;
struct TYPE_5__ {int move_sector_count; } ;
struct TYPE_7__ {TYPE_1__ command_specific_data; TYPE_2__* device; } ;
struct TYPE_6__ {int capabilities; } ;
typedef TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_COMPLETE ;
 int SATI_DEVICE_CAP_48BIT_ENABLE ;
 int SATI_SUCCESS ;
 scalar_t__* sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_ata_features (scalar_t__*,int) ;
 int sati_set_ata_features_exp (scalar_t__*,int) ;
 int sati_set_ata_sector_count (scalar_t__*,int) ;
 int sati_set_ata_sector_count_exp (scalar_t__*,int) ;

SATI_STATUS sati_move_set_sector_count(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io,
   U32 sector_count,
   U8 is_fpdma_command
)
{
   U32 max_sector_count;
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   if (sequence->device->capabilities & SATI_DEVICE_CAP_48BIT_ENABLE)
      max_sector_count = 65536;
   else
      max_sector_count = 256;



   if (0 == sector_count)
   {


      return SATI_COMPLETE;
   }
   else if (sector_count >= max_sector_count)
   {


      sequence->command_specific_data.move_sector_count =
         sector_count - max_sector_count;



      sector_count = 0;
   }

   if (is_fpdma_command)
   {
      sati_set_ata_features(register_fis, sector_count & 0xFF);
      sati_set_ata_features_exp(register_fis, (sector_count >> 8) & 0xFF);
   }
   else
   {
      sati_set_ata_sector_count(register_fis, sector_count & 0xFF);
      sati_set_ata_sector_count_exp(register_fis, (sector_count >> 8) & 0xFF);
   }

   return SATI_SUCCESS;
}
