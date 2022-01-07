
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_4__ {int type; int state; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_STATUS_REG_ERROR_BIT ;
 int SATI_COMPLETE ;
 int SATI_FAILURE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_STATE_FINAL ;

 int SCSI_ASCQ_MICROCODE_HAS_CHANGED ;
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_MICROCODE_HAS_CHANGED ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_SENSE_ABORTED_COMMAND ;
 int SCSI_SENSE_UNIT_ATTENTION ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int SCSI_STATUS_GOOD ;
 int* sati_cb_get_d2h_register_fis_address (void*) ;
 int sati_get_ata_status (int*) ;
 int sati_scsi_sense_data_construct (TYPE_1__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_write_buffer_translate_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);
   U8 ata_status = (U8) sati_get_ata_status(register_fis);
   SATI_STATUS status = SATI_FAILURE;

   if (ata_status & ATA_STATUS_REG_ERROR_BIT)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ABORTED_COMMAND,
         SCSI_ASC_NO_ADDITIONAL_SENSE,
         SCSI_ASCQ_NO_ADDITIONAL_SENSE
      );
      status = SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else
   {
      switch(sequence->type)
      {
         case 128:
            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_GOOD,
               SCSI_SENSE_UNIT_ATTENTION,
               SCSI_ASC_MICROCODE_HAS_CHANGED,
               SCSI_ASCQ_MICROCODE_HAS_CHANGED
            );
            status = SATI_COMPLETE;
         break;

         default:
            status = SATI_COMPLETE;
         break;
      }
   }

   sequence->state = SATI_SEQUENCE_STATE_FINAL;
   return status;
}
