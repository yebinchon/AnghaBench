
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_3__ {int ata_transfer_length; int protocol; int data_direction; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;


 int ATA_READ_LOG_EXT ;
 int SATI_DATA_DIRECTION_IN ;
 int SAT_PROTOCOL_PIO_DATA_IN ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_ata_command (int *,int ) ;
 int sati_set_ata_lba_low (int *,int ) ;
 int sati_set_ata_lba_mid (int *,int) ;
 int sati_set_ata_lba_mid_exp (int *,int) ;
 int sati_set_ata_sector_count (int *,int) ;

void sati_ata_read_log_ext_construct(
   void * ata_io,
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   U8 log_address,
   U32 transfer_length
)
{
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sati_set_ata_command(register_fis, ATA_READ_LOG_EXT);

   sati_set_ata_lba_low(register_fis, log_address);
   sati_set_ata_lba_mid(register_fis, 0x00);
   sati_set_ata_lba_mid_exp(register_fis, 0x00);

   sati_set_ata_sector_count(register_fis, 0x01);

   sequence->data_direction = SATI_DATA_DIRECTION_IN;
   sequence->protocol = SAT_PROTOCOL_PIO_DATA_IN;
   sequence->ata_transfer_length = transfer_length;

}
