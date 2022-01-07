
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_7__ {int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef scalar_t__ SATI_STATUS ;


 scalar_t__ SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_WRITE_16 ;
 scalar_t__ SATI_SUCCESS ;
 int * sati_cb_get_cdb_address (void*) ;
 scalar_t__ sati_device_state_stopped (TYPE_1__*,void*) ;
 int sati_get_cdb_byte (int *,int) ;
 scalar_t__ sati_move_translate_64_bit_lba (TYPE_1__*,void*,void*) ;
 int sati_move_translate_command (TYPE_1__*,void*,void*,int ) ;
 scalar_t__ sati_write_large_translate_command (TYPE_1__*,void*,void*,int,int *) ;

SATI_STATUS sati_write_16_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_STATUS status;
   U8 device_head = 0;
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U32 sector_count = (sati_get_cdb_byte(cdb, 10) << 24) |
                                (sati_get_cdb_byte(cdb, 11) << 16) |
                                (sati_get_cdb_byte(cdb, 12) << 8) |
                                (sati_get_cdb_byte(cdb, 13));

   if(sati_device_state_stopped(sequence, scsi_io))
   {
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else
   {
      sequence->type = SATI_SEQUENCE_WRITE_16;



      status = sati_write_large_translate_command(
                  sequence, scsi_io, ata_io, sector_count, &device_head
               );



      if (status == SATI_SUCCESS)
      {
         sati_move_translate_command(sequence, scsi_io, ata_io, device_head);
         status = sati_move_translate_64_bit_lba(sequence, scsi_io, ata_io);
      }

      return status;
   }
}
