
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_6__ {TYPE_1__* device; int data_direction; } ;
struct TYPE_5__ {int capabilities; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_WRITE_DMA ;
 int ATA_WRITE_DMA_EXT ;
 int SATI_DATA_DIRECTION_OUT ;
 int SATI_DEVICE_CAP_48BIT_ENABLE ;
 int SATI_SUCCESS ;
 int sati_ata_non_data_command (void*,TYPE_2__*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_ata_command (int *,int ) ;

__attribute__((used)) static
SATI_STATUS sati_reassign_blocks_write_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);

   sati_ata_non_data_command(ata_io, sequence);
   sequence->data_direction = SATI_DATA_DIRECTION_OUT;





   if (sequence->device->capabilities & SATI_DEVICE_CAP_48BIT_ENABLE)
      sati_set_ata_command(register_fis, ATA_WRITE_DMA_EXT);
   else
      sati_set_ata_command(register_fis, ATA_WRITE_DMA);

   return SATI_SUCCESS;
}
