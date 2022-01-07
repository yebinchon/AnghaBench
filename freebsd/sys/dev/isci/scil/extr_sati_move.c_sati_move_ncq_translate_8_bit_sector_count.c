
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int * sati_cb_get_cdb_address (void*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 scalar_t__ sati_get_cdb_byte (int *,int) ;
 int sati_set_ata_features (int *,scalar_t__) ;
 int sati_set_ata_features_exp (int *,int) ;

__attribute__((used)) static
void sati_move_ncq_translate_8_bit_sector_count(
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sati_set_ata_features(register_fis, sati_get_cdb_byte(cdb, 4));




   if (sati_get_cdb_byte(cdb, 4) == 0)
      sati_set_ata_features_exp(register_fis, 1);
}
