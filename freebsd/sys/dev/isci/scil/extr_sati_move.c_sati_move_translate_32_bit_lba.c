
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int * sati_cb_get_cdb_address (void*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_set_ata_lba_high (int *,int ) ;
 int sati_set_ata_lba_high_exp (int *,int ) ;
 int sati_set_ata_lba_low (int *,int ) ;
 int sati_set_ata_lba_low_exp (int *,int ) ;
 int sati_set_ata_lba_mid (int *,int ) ;
 int sati_set_ata_lba_mid_exp (int *,int ) ;

void sati_move_translate_32_bit_lba(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sati_set_ata_lba_low(register_fis, sati_get_cdb_byte(cdb, 5));
   sati_set_ata_lba_mid(register_fis, sati_get_cdb_byte(cdb, 4));
   sati_set_ata_lba_high(register_fis, sati_get_cdb_byte(cdb, 3));
   sati_set_ata_lba_low_exp(register_fis, sati_get_cdb_byte(cdb, 2));
   sati_set_ata_lba_mid_exp(register_fis, 0);
   sati_set_ata_lba_high_exp(register_fis, 0);
}
