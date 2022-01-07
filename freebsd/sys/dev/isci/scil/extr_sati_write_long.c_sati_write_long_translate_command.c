
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int U8 ;
typedef int U16 ;
struct TYPE_10__ {void* type; TYPE_1__* device; } ;
struct TYPE_9__ {int capabilities; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef scalar_t__ SATI_STATUS ;


 int ATA_WRITE_UNCORRECTABLE_FLAGGED ;
 int ATA_WRITE_UNCORRECTABLE_PSEUDO ;

 int SATI_DEVICE_CAP_MULTIPLE_SECTORS_PER_PHYSCIAL_SECTOR ;
 int SATI_DEVICE_CAP_WRITE_UNCORRECTABLE_ENABLE ;
 scalar_t__ SATI_FAILURE ;
 scalar_t__ SATI_FAILURE_CHECK_RESPONSE_DATA ;
 void* SATI_SEQUENCE_WRITE_LONG ;
 scalar_t__ SATI_SUCCESS ;
 int SATI_WRITE_LONG_GET_COR_WR_PB_BITS (int *) ;
 int SCSI_ASCQ_INVALID_COMMAND_OPERATION_CODE ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_COMMAND_OPERATION_CODE ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int SCSI_WRITE_LONG_10 ;


 int sati_ata_write_uncorrectable_construct (void*,TYPE_2__*,int ) ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_move_translate_32_bit_lba (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_move_translate_64_bit_lba (TYPE_2__*,void*,void*) ;
 int sati_move_translate_command (TYPE_2__*,void*,void*,int ) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_write_long_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   SATI_STATUS status = SATI_FAILURE;
   U16 byte_transfer_length;
   U8 device_head = 0;

   if((sequence->device->capabilities &
       SATI_DEVICE_CAP_WRITE_UNCORRECTABLE_ENABLE) == 0)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_COMMAND_OPERATION_CODE,
         SCSI_ASCQ_INVALID_COMMAND_OPERATION_CODE
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }


   if(sati_get_cdb_byte(cdb, 0) == SCSI_WRITE_LONG_10)
   {
      byte_transfer_length = (sati_get_cdb_byte(cdb, 7) << 8) |
                             (sati_get_cdb_byte(cdb, 8));

      sati_move_translate_32_bit_lba(sequence, scsi_io, ata_io);
   }
   else
   {
      byte_transfer_length = (sati_get_cdb_byte(cdb, 12) << 8) |
                             (sati_get_cdb_byte(cdb, 13));

      status = sati_move_translate_64_bit_lba(sequence, scsi_io, ata_io);

      if( status == SATI_FAILURE_CHECK_RESPONSE_DATA)
      {
         return status;
      }
   }


   sati_move_translate_command(sequence, scsi_io, ata_io, device_head);

   if( byte_transfer_length != 0 )
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

   switch(SATI_WRITE_LONG_GET_COR_WR_PB_BITS(cdb))
   {
      case 129 :

         if( (sequence->device->capabilities &
              SATI_DEVICE_CAP_MULTIPLE_SECTORS_PER_PHYSCIAL_SECTOR) != 0 )
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
         else
         {
            sati_ata_write_uncorrectable_construct(
               ata_io,
               sequence,
               ATA_WRITE_UNCORRECTABLE_PSEUDO
            );
            sequence->type = SATI_SEQUENCE_WRITE_LONG;
            status = SATI_SUCCESS;
         }
         break;

      case 128 :

         sati_ata_write_uncorrectable_construct(
            ata_io,
            sequence,
            ATA_WRITE_UNCORRECTABLE_PSEUDO
         );
         sequence->type = SATI_SEQUENCE_WRITE_LONG;
         status = SATI_SUCCESS;
         break;

      case 130 :

         sati_ata_write_uncorrectable_construct(
            ata_io,
            sequence,
            ATA_WRITE_UNCORRECTABLE_FLAGGED
         );
         sequence->type = SATI_SEQUENCE_WRITE_LONG;
         status = SATI_SUCCESS;
         break;

      default :

         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_INVALID_FIELD_IN_CDB,
            SCSI_ASCQ_INVALID_FIELD_IN_CDB
         );
         return SATI_FAILURE_CHECK_RESPONSE_DATA;
         break;
   }
   return status;
}
