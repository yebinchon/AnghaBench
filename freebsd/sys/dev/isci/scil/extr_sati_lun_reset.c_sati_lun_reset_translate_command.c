
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_3__ {scalar_t__ ata_transfer_length; int protocol; int data_direction; int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_CONTROL_REG_SOFT_RESET_BIT ;
 int ATA_NOP ;
 int SATI_DATA_DIRECTION_NONE ;
 int SATI_SEQUENCE_LUN_RESET ;
 int SATI_SUCCESS ;
 int SAT_PROTOCOL_SOFT_RESET ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_clear_sata_command_flag (int *) ;
 int sati_set_ata_command (int *,int ) ;
 int sati_set_ata_control (int *,int ) ;
 int sati_set_ata_device_head (int *,int ) ;
 int sati_set_ata_features (int *,int ) ;
 int sati_set_ata_features_exp (int *,int ) ;
 int sati_set_ata_lba_high (int *,int ) ;
 int sati_set_ata_lba_high_exp (int *,int ) ;
 int sati_set_ata_lba_low (int *,int ) ;
 int sati_set_ata_lba_low_exp (int *,int ) ;
 int sati_set_ata_lba_mid (int *,int ) ;
 int sati_set_ata_lba_mid_exp (int *,int ) ;
 int sati_set_ata_sector_count (int *,int ) ;
 int sati_set_ata_sector_count_exp (int *,int ) ;

SATI_STATUS sati_lun_reset_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8* register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sati_set_ata_command(register_fis, ATA_NOP);
   sati_set_ata_control(register_fis, ATA_CONTROL_REG_SOFT_RESET_BIT);


   sati_clear_sata_command_flag(register_fis);
   sati_set_ata_features(register_fis, 0);
   sati_set_ata_features_exp(register_fis, 0);
   sati_set_ata_sector_count(register_fis, 0);
   sati_set_ata_sector_count_exp(register_fis, 0);
   sati_set_ata_lba_low(register_fis, 0);
   sati_set_ata_lba_mid(register_fis, 0);
   sati_set_ata_lba_high(register_fis, 0);
   sati_set_ata_lba_low_exp(register_fis, 0);
   sati_set_ata_lba_mid_exp(register_fis, 0);
   sati_set_ata_lba_high_exp(register_fis, 0);
   sati_set_ata_device_head(register_fis, 0);

   sequence->type = SATI_SEQUENCE_LUN_RESET;
   sequence->data_direction = SATI_DATA_DIRECTION_NONE;
   sequence->protocol = SAT_PROTOCOL_SOFT_RESET;
   sequence->ata_transfer_length = 0;

   return SATI_SUCCESS;
}
