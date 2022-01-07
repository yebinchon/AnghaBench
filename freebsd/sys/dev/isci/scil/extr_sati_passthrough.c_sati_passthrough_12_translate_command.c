
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_5__ {int state; int protocol; int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int PASSTHROUGH_CDB_PROTOCOL (int *) ;
 int PASSTHROUGH_CDB_T_DIR (int *) ;
 int PASSTHROUGH_DMA ;
 int PASSTHROUGH_UDMA_DATA_IN ;
 int PASSTHROUGH_UDMA_DATA_OUT ;
 scalar_t__ SATI_COMPLETE ;
 int SATI_FAILURE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_ATA_PASSTHROUGH_12 ;
 int SATI_SEQUENCE_STATE_AWAIT_RESPONSE ;
 int SATI_SEQUENCE_STATE_TRANSLATE_DATA ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_cdb_address (void*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 scalar_t__ sati_passthrough_check_direction (TYPE_1__*,int *) ;
 scalar_t__ sati_passthrough_multiple_count_error (int *) ;
 int sati_scsi_sense_data_construct (TYPE_1__*,void*,int ,int ,int ,int ) ;
 int sati_set_ata_command (int *,int ) ;
 int sati_set_ata_device_head (int *,int ) ;
 int sati_set_ata_features (int *,int ) ;
 int sati_set_ata_lba_high (int *,int ) ;
 int sati_set_ata_lba_low (int *,int ) ;
 int sati_set_ata_lba_mid (int *,int ) ;
 int sati_set_ata_sector_count (int *,int ) ;

SATI_STATUS sati_passthrough_12_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_STATUS status;
   U8 * cdb;
   U8 * register_fis;

   status = SATI_FAILURE;

   sequence->type = SATI_SEQUENCE_ATA_PASSTHROUGH_12;
   sequence->state = SATI_SEQUENCE_STATE_TRANSLATE_DATA;

   cdb = sati_cb_get_cdb_address(scsi_io);
   sequence->protocol = PASSTHROUGH_CDB_PROTOCOL (cdb);
   register_fis = sati_cb_get_h2d_register_fis_address(ata_io);
   if (sequence->protocol == PASSTHROUGH_DMA)
   {
      if (PASSTHROUGH_CDB_T_DIR(cdb) == 0x1)
      {
         sequence->protocol = PASSTHROUGH_UDMA_DATA_IN;
      }
      else
      {
         sequence->protocol = PASSTHROUGH_UDMA_DATA_OUT;
      }
   }

   if (sati_passthrough_check_direction(sequence, cdb) != SATI_COMPLETE
       || sati_passthrough_multiple_count_error(cdb)
      )
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

   sati_set_ata_features(register_fis, sati_get_cdb_byte(cdb, 3));
   sati_set_ata_sector_count(register_fis, sati_get_cdb_byte(cdb, 4));
   sati_set_ata_lba_low(register_fis, sati_get_cdb_byte(cdb, 5));
   sati_set_ata_lba_mid(register_fis, sati_get_cdb_byte(cdb, 6));
   sati_set_ata_lba_high(register_fis, sati_get_cdb_byte(cdb, 7));
   sati_set_ata_device_head(register_fis, sati_get_cdb_byte(cdb, 8));
   sati_set_ata_command(register_fis, sati_get_cdb_byte(cdb, 9));

   sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;

   return SATI_SUCCESS;
}
