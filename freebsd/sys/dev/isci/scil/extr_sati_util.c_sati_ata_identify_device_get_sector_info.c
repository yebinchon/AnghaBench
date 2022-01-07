
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int command_set_enabled1; int* max_48bit_lba; int* total_num_sectors; int physical_logical_sector_info; int* words_per_logical_sector; } ;
typedef TYPE_1__ ATA_IDENTIFY_DEVICE_DATA_T ;


 int ATA_IDENTIFY_COMMAND_SET_SUPPORTED1_48BIT_ENABLE ;
 int ATA_IDENTIFY_SECTOR_LARGER_THEN_512_ENABLE ;

void sati_ata_identify_device_get_sector_info(
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   U32 * lba_high,
   U32 * lba_low,
   U32 * sector_size
)
{



   if (identify->command_set_enabled1
       & ATA_IDENTIFY_COMMAND_SET_SUPPORTED1_48BIT_ENABLE)
   {


      *lba_high = identify->max_48bit_lba[7] << 24;
      *lba_high |= identify->max_48bit_lba[6] << 16;
      *lba_high |= identify->max_48bit_lba[5] << 8;
      *lba_high |= identify->max_48bit_lba[4];

      *lba_low = identify->max_48bit_lba[3] << 24;
      *lba_low |= identify->max_48bit_lba[2] << 16;
      *lba_low |= identify->max_48bit_lba[1] << 8;
      *lba_low |= identify->max_48bit_lba[0];
   }
   else
   {


      *lba_high = 0;
      *lba_low = identify->total_num_sectors[3] << 24;
      *lba_low |= identify->total_num_sectors[2] << 16;
      *lba_low |= identify->total_num_sectors[1] << 8;
      *lba_low |= identify->total_num_sectors[0];
   }



   if (identify->physical_logical_sector_info
       & ATA_IDENTIFY_SECTOR_LARGER_THEN_512_ENABLE)
   {
      *sector_size = identify->words_per_logical_sector[3] << 24;
      *sector_size |= identify->words_per_logical_sector[2] << 16;
      *sector_size |= identify->words_per_logical_sector[1] << 8;
      *sector_size |= identify->words_per_logical_sector[0];
   }
   else
   {

      *sector_size = 512;
   }
}
