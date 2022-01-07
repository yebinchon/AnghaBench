
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int ATA_DEV_HEAD_REG_LBA_MODE_ENABLE ;
 int* sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_ata_device_head (int*,int) ;

void sati_move_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io,
   U8 device_head
)
{
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sati_set_ata_device_head(
      register_fis, device_head | ATA_DEV_HEAD_REG_LBA_MODE_ENABLE
   );
}
