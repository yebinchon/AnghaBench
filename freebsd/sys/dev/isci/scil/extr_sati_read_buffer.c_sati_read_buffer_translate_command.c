
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_6__ {int allocation_length; void* state; int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_COMPLETE ;
 int SATI_FAILURE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;


 int SATI_SEQUENCE_READ_BUFFER ;
 void* SATI_SEQUENCE_STATE_AWAIT_RESPONSE ;
 void* SATI_SEQUENCE_STATE_FINAL ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int sati_ata_read_buffer_construct (void*,TYPE_1__*) ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_scsi_sense_data_construct (TYPE_1__*,void*,int ,int ,int ,int ) ;
 int sati_set_data_byte (TYPE_1__*,void*,int,int) ;

SATI_STATUS sati_read_buffer_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   SATI_STATUS status = SATI_FAILURE;
   U32 allocation_length;
   U32 buffer_offset;

   allocation_length = ((sati_get_cdb_byte(cdb, 6) << 16) |
                        (sati_get_cdb_byte(cdb, 7) << 8) |
                        (sati_get_cdb_byte(cdb, 8)));

   buffer_offset = ((sati_get_cdb_byte(cdb, 3) << 16) |
                    (sati_get_cdb_byte(cdb, 4) << 8) |
                    (sati_get_cdb_byte(cdb, 5)));

   sequence->allocation_length = allocation_length;

   switch(sati_get_cdb_byte(cdb, 1))
   {
      case 129:
         if((allocation_length == 512) && (buffer_offset == 0) &&
            (sati_get_cdb_byte(cdb, 2) == 0))
         {
            sati_ata_read_buffer_construct(ata_io, sequence);
            sequence->type = SATI_SEQUENCE_READ_BUFFER;
            sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;
            status = SATI_SUCCESS;
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
            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
         }
      break;

      case 128:


         if(allocation_length < 4)
         {
            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ILLEGAL_REQUEST,
               SCSI_ASC_INVALID_FIELD_IN_CDB,
               SCSI_ASCQ_INVALID_FIELD_IN_CDB
            );
            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
         }
         else
         {

            sati_set_data_byte(sequence, scsi_io, 0, 0x09);
            sati_set_data_byte(sequence, scsi_io, 1, 0x00);
            sati_set_data_byte(sequence, scsi_io, 2, 0x02);
            sati_set_data_byte(sequence, scsi_io, 3, 0x00);
            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            status = SATI_COMPLETE;
         }
      break;

      default:

         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_INVALID_FIELD_IN_CDB,
            SCSI_ASCQ_INVALID_FIELD_IN_CDB
         );
         sequence->state = SATI_SEQUENCE_STATE_FINAL;
         status = SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   return status;
}
