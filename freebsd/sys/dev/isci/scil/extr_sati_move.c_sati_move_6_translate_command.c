
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_SUCCESS ;
 int * sati_cb_get_cdb_address (void*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_move_translate_command (int *,void*,void*,int ) ;
 int sati_set_ata_lba_high (int *,int) ;
 int sati_set_ata_lba_low (int *,int) ;
 int sati_set_ata_lba_mid (int *,int) ;

SATI_STATUS sati_move_6_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);



   sati_set_ata_lba_low(register_fis, sati_get_cdb_byte(cdb, 3));
   sati_set_ata_lba_mid(register_fis, sati_get_cdb_byte(cdb, 2));
   sati_set_ata_lba_high(register_fis, sati_get_cdb_byte(cdb, 1) & 0x1F);

   sati_move_translate_command(sequence, scsi_io, ata_io, 0);

   return SATI_SUCCESS;
}
