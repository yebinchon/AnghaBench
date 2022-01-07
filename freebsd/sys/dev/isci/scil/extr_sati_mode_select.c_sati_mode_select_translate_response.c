
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_STATUS_REG_ERROR_BIT ;
 int SATI_COMPLETE ;
 int SATI_FAILURE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_INCOMPLETE ;
 scalar_t__ SATI_SEQUENCE_STATE_INCOMPLETE ;
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_SENSE_ABORTED_COMMAND ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_d2h_register_fis_address (void*) ;
 int sati_get_ata_status (int *) ;
 int sati_scsi_sense_data_construct (TYPE_1__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_mode_select_translate_response(
SATI_TRANSLATOR_SEQUENCE_T * sequence,
void * scsi_io,
void * ata_io
)
{
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);
   SATI_STATUS status = SATI_FAILURE;

   if(sati_get_ata_status(register_fis) & ATA_STATUS_REG_ERROR_BIT)
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
      if (sequence->state == SATI_SEQUENCE_STATE_INCOMPLETE)
      {
         status = SATI_SEQUENCE_INCOMPLETE;
      }
      else
      {
         status = SATI_COMPLETE;
      }
   }
   return status;
}
