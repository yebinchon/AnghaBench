
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int ATA_SET_FEATURES ;
 int sati_ata_non_data_command (void*,int *) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_ata_command (int *,int ) ;
 int sati_set_ata_features (int *,int ) ;

void sati_ata_set_features_construct(
   void * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   U8 feature
)
{
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sati_set_ata_command(register_fis, ATA_SET_FEATURES);
   sati_set_ata_features(register_fis, feature);
   sati_ata_non_data_command(ata_io, sequence);
}
