
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ U8 ;
typedef int U32 ;
struct TYPE_9__ {int capabilities1; } ;
struct TYPE_8__ {TYPE_1__* device; } ;
struct TYPE_7__ {scalar_t__ ata_standby_timer; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef TYPE_3__ ATA_IDENTIFY_DEVICE_DATA_T ;


 int SCSI_MODE_PAGE_1A_LENGTH ;
 scalar_t__ SCSI_MODE_PAGE_POWER_CONDITION ;
 scalar_t__ SCSI_MODE_SENSE_PC_CURRENT ;
 scalar_t__ SCSI_MODE_SENSE_PC_SHIFT ;
 scalar_t__ STANDBY_TIMER_DISABLED ;
 scalar_t__ STANDBY_TIMER_ENABLED ;
 int STANDBY_TIMER_SUPPORTED ;
 scalar_t__* sati_cb_get_cdb_address (void*) ;
 scalar_t__ sati_get_cdb_byte (scalar_t__*,int) ;
 int sati_set_data_byte (TYPE_2__*,void*,int,scalar_t__) ;

U32 sati_mode_sense_power_condition_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   U32 offset
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U8 page_control = sati_get_cdb_byte(cdb, 2) >> SCSI_MODE_SENSE_PC_SHIFT;

   U8 ata_sb_timer;


   U32 standby_timer = 0x00000000;

   U8 standby_enabled = STANDBY_TIMER_DISABLED;

   if ((page_control == SCSI_MODE_SENSE_PC_CURRENT) &&
       (identify->capabilities1 & STANDBY_TIMER_SUPPORTED))
   {
      standby_enabled = STANDBY_TIMER_ENABLED;

      ata_sb_timer = sequence->device->ata_standby_timer;


      if(ata_sb_timer <= 0xF0)
      {
         standby_timer = ata_sb_timer * 50;
      }
      else if(ata_sb_timer <= 0xFB)
      {
         standby_timer = ((ata_sb_timer - 240) * 18000);
      }
      else if(ata_sb_timer == 0xFC)
      {
         standby_timer = 12600;
      }
      else if(ata_sb_timer == 0xFD)
      {
         standby_timer = 432000;
      }
      else if(ata_sb_timer == 0xFF)
      {
         standby_timer = 12750;
      }
      else
      {
         standby_timer = 0xFFFFFFFF;
      }
   }

   sati_set_data_byte(sequence, scsi_io, offset, SCSI_MODE_PAGE_POWER_CONDITION);
   sati_set_data_byte(sequence, scsi_io, offset + 1, (SCSI_MODE_PAGE_1A_LENGTH - 2));
   sati_set_data_byte(sequence, scsi_io, offset + 2, 0x00);
   sati_set_data_byte(sequence, scsi_io, offset + 3, standby_enabled);
   sati_set_data_byte(sequence, scsi_io, offset + 4, 0x00);
   sati_set_data_byte(sequence, scsi_io, offset + 5, 0x00);
   sati_set_data_byte(sequence, scsi_io, offset + 6, 0x00);
   sati_set_data_byte(sequence, scsi_io, offset + 7, 0x00);
   sati_set_data_byte(sequence, scsi_io, offset + 8, (U8) (standby_timer >> 24));
   sati_set_data_byte(sequence, scsi_io, offset + 9, (U8) (standby_timer >> 16));
   sati_set_data_byte(sequence, scsi_io, offset + 10, (U8) (standby_timer >> 8));
   sati_set_data_byte(sequence, scsi_io, offset + 11, (U8) standby_timer);

   return SCSI_MODE_PAGE_1A_LENGTH;
}
