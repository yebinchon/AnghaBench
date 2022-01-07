
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_9__ {TYPE_1__* device; int protocol; } ;
struct TYPE_8__ {int capabilities; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_READ_DMA ;
 int ATA_READ_DMA_EXT ;
 int ATA_READ_FPDMA ;
 int ATA_WRITE_DMA ;
 int ATA_WRITE_DMA_EXT ;
 int ATA_WRITE_FPDMA ;
 int SATI_DEVICE_CAP_48BIT_ENABLE ;
 int SATI_DEVICE_CAP_NCQ_SUPPORTED_ENABLE ;
 int SATI_DEVICE_CAP_UDMA_ENABLE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SAT_PROTOCOL_FPDMA ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_cdb_address (void*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 scalar_t__ sati_get_cdb_byte (int *,int) ;
 int sati_move_6_translate_command (TYPE_2__*,void*,void*) ;
 int sati_move_ncq_translate_8_bit_sector_count (void*,void*) ;
 int sati_move_set_ata_command (TYPE_2__*,void*,int ,int ) ;
 int sati_move_small_udma_translate_command (TYPE_2__*,void*,void*,int ,int ) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;
 int sati_set_ata_sector_count_exp (int *,int) ;

SATI_STATUS sati_move_small_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{


   if (sequence->device->capabilities & SATI_DEVICE_CAP_NCQ_SUPPORTED_ENABLE)
   {
      sati_move_set_ata_command(
         sequence, ata_io, ATA_WRITE_FPDMA, ATA_READ_FPDMA
      );
      sati_move_ncq_translate_8_bit_sector_count(scsi_io, ata_io);
      sequence->protocol = SAT_PROTOCOL_FPDMA;
   }
   else if (sequence->device->capabilities & SATI_DEVICE_CAP_48BIT_ENABLE)
   {
      U8 * cdb = sati_cb_get_cdb_address(scsi_io);

      sati_move_small_udma_translate_command(
         sequence, scsi_io, ata_io, ATA_WRITE_DMA_EXT, ATA_READ_DMA_EXT
      );




      if (sati_get_cdb_byte(cdb, 4) == 0)
      {
         U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);
         sati_set_ata_sector_count_exp(register_fis, 1);
      }
   }
   else if (sequence->device->capabilities & SATI_DEVICE_CAP_UDMA_ENABLE)
   {
      sati_move_small_udma_translate_command(
         sequence, scsi_io, ata_io, ATA_WRITE_DMA, ATA_READ_DMA
      );
   }
   else
   {




      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   return sati_move_6_translate_command(sequence, scsi_io, ata_io);
}
