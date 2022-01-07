
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_SUCCESS ;
 int sati_move_translate_32_bit_lba (int *,void*,void*) ;
 int sati_move_translate_command (int *,void*,void*,int ) ;

SATI_STATUS sati_move_32_bit_lba_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io,
   U8 device_head
)
{
   sati_move_translate_32_bit_lba(sequence, scsi_io, ata_io);
   sati_move_translate_command(sequence, scsi_io, ata_io, device_head);

   return SATI_SUCCESS;
}
