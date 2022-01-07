
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_ata_lba_high (int *,int ) ;
 int sati_set_ata_lba_high_exp (int *,int ) ;
 int sati_set_ata_lba_low (int *,int ) ;
 int sati_set_ata_lba_low_exp (int *,int ) ;
 int sati_set_ata_lba_mid (int *,int ) ;
 int sati_set_ata_lba_mid_exp (int *,int ) ;

__attribute__((used)) static
void set_current_long_lba(U8 * lba, void * ata_io)
{
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sati_set_ata_lba_low(register_fis, lba[0]);
   sati_set_ata_lba_mid(register_fis, lba[1]);
   sati_set_ata_lba_high(register_fis, lba[2]);
   sati_set_ata_lba_low_exp(register_fis, lba[3]);
   sati_set_ata_lba_mid_exp(register_fis, lba[4]);
   sati_set_ata_lba_high_exp(register_fis, lba[5]);
}
