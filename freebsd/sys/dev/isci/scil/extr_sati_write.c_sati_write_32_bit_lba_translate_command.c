
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef scalar_t__ SATI_STATUS ;


 scalar_t__ SATI_SUCCESS ;
 scalar_t__ sati_move_32_bit_lba_translate_command (int *,void*,void*,int ) ;
 scalar_t__ sati_write_large_translate_command (int *,void*,void*,int ,int *) ;

__attribute__((used)) static
SATI_STATUS sati_write_32_bit_lba_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io,
   U32 sector_count,
   U8 control_byte_offset
)
{
   U8 device_head = 0;
   SATI_STATUS status;

   status = sati_write_large_translate_command(
               sequence, scsi_io, ata_io, sector_count, &device_head
            );

   if (status == SATI_SUCCESS)
   {
      status = sati_move_32_bit_lba_translate_command(
                  sequence, scsi_io, ata_io, device_head
               );
   }

   return status;
}
