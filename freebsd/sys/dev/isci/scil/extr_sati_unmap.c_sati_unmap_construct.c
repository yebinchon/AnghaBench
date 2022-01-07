
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_3__ {int is_translate_response_required; int protocol; int data_direction; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ASSERT (int) ;
 int ATA_DATA_SET_MANAGEMENT ;
 int ATA_DEV_HEAD_REG_LBA_MODE_ENABLE ;
 int SATI_DATA_DIRECTION_OUT ;
 int SATI_SUCCESS ;
 int SAT_PROTOCOL_UDMA_DATA_OUT ;
 int TRUE ;
 int * sati_cb_get_d2h_register_fis_address (void*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_ata_command (int *,int ) ;
 int sati_set_ata_device_head (int *,int ) ;
 int sati_set_ata_features (int *,int) ;
 int sati_set_ata_sector_count (int *,int ) ;
 int sati_set_ata_status (int *,int) ;

SATI_STATUS sati_unmap_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io,
   U32 sector_count
)
{
   U8 * h2d_register_fis = sati_cb_get_h2d_register_fis_address(ata_io);
   U8 * d2h_register_fis = sati_cb_get_d2h_register_fis_address(ata_io);

   sati_set_ata_command(h2d_register_fis, ATA_DATA_SET_MANAGEMENT);
   sati_set_ata_features(h2d_register_fis, 0x01);
   sati_set_ata_sector_count(h2d_register_fis, (U8)sector_count);
   sati_set_ata_device_head(h2d_register_fis, ATA_DEV_HEAD_REG_LBA_MODE_ENABLE);



   sati_set_ata_status(d2h_register_fis, 0x00);


   sequence->data_direction = SATI_DATA_DIRECTION_OUT;
   sequence->protocol = SAT_PROTOCOL_UDMA_DATA_OUT;



   sequence->is_translate_response_required = TRUE;

   ASSERT(sector_count < 0x100);

   return SATI_SUCCESS;
}
