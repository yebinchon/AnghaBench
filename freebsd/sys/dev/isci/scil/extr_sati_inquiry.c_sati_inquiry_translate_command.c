
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_7__ {int allocation_length; int type; int state; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_COMPLETE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_INQUIRY_ATA_INFORMATION ;
 int SATI_SEQUENCE_INQUIRY_BLOCK_DEVICE ;
 int SATI_SEQUENCE_INQUIRY_DEVICE_ID ;
 int SATI_SEQUENCE_INQUIRY_EXECUTE_DEVICE_DIAG ;
 int SATI_SEQUENCE_INQUIRY_SERIAL_NUMBER ;
 int SATI_SEQUENCE_INQUIRY_STANDARD ;
 int SATI_SEQUENCE_INQUIRY_SUPPORTED_PAGES ;
 int SATI_SEQUENCE_STATE_INCOMPLETE ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;



 int SCSI_INQUIRY_EVPD_ENABLE ;


 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int sati_ata_execute_device_diagnostic_construct (void*,TYPE_1__*) ;
 int sati_ata_identify_device_construct (void*,TYPE_1__*) ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_inquiry_supported_pages_translate_data (TYPE_1__*,void*) ;
 int sati_scsi_sense_data_construct (TYPE_1__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_inquiry_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);





   if ( ((sati_get_cdb_byte(cdb, 1) & SCSI_INQUIRY_EVPD_ENABLE) == 0)
      && (sati_get_cdb_byte(cdb, 2) != 0) )
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


   sequence->allocation_length = (sati_get_cdb_byte(cdb, 3) << 8) |
                                 (sati_get_cdb_byte(cdb, 4));



   if (sati_get_cdb_byte(cdb, 1) & SCSI_INQUIRY_EVPD_ENABLE)
   {

      switch (sati_get_cdb_byte(cdb, 2))
      {
         case 129:
            sequence->type = SATI_SEQUENCE_INQUIRY_SUPPORTED_PAGES;
            sati_inquiry_supported_pages_translate_data(sequence, scsi_io);
            return SATI_COMPLETE;
         break;

         case 128:
            sequence->type = SATI_SEQUENCE_INQUIRY_SERIAL_NUMBER;
         break;

         case 130:
            sequence->type = SATI_SEQUENCE_INQUIRY_DEVICE_ID;
         break;

         case 132:

            if(sequence->state == SATI_SEQUENCE_STATE_INCOMPLETE)
            {
               sati_ata_execute_device_diagnostic_construct(
                  ata_io,
                  sequence
               );
               sequence->type = SATI_SEQUENCE_INQUIRY_EXECUTE_DEVICE_DIAG;
            }
            else
            {
               sequence->type = SATI_SEQUENCE_INQUIRY_ATA_INFORMATION;
            }
         break;

         case 131:
            sequence->type = SATI_SEQUENCE_INQUIRY_BLOCK_DEVICE;
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
            return SATI_FAILURE_CHECK_RESPONSE_DATA;
         break;
      }
   }
   else
   {
      sequence->type = SATI_SEQUENCE_INQUIRY_STANDARD;
   }

   sati_ata_identify_device_construct(ata_io, sequence);

   return SATI_SUCCESS;
}
