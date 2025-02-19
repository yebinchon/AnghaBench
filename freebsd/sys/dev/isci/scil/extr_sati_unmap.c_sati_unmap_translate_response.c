
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_6__ {int unmap_process_state; } ;
struct TYPE_7__ {scalar_t__ state; TYPE_1__ command_specific_data; } ;
typedef int SATI_UNMAP_PROCESSING_STATE_T ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef scalar_t__ SATI_STATUS ;


 int ATA_STATUS_REG_ERROR_BIT ;
 scalar_t__ SATI_COMPLETE ;
 scalar_t__ SATI_SEQUENCE_STATE_FINAL ;
 scalar_t__ SATI_SEQUENCE_STATE_INCOMPLETE ;
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_SENSE_ABORTED_COMMAND ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_d2h_register_fis_address (void*) ;
 int sati_get_ata_status (int *) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;
 int sati_unmap_terminate (TYPE_2__*,void*,void*) ;

SATI_STATUS sati_unmap_translate_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);
   SATI_UNMAP_PROCESSING_STATE_T * unmap_process_state;
   SATI_STATUS sati_status = SATI_COMPLETE;

   unmap_process_state = &sequence->command_specific_data.unmap_process_state;

   if (sati_get_ata_status(register_fis) & ATA_STATUS_REG_ERROR_BIT)
   {
      sequence->state = SATI_SEQUENCE_STATE_FINAL;
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ABORTED_COMMAND,
         SCSI_ASC_NO_ADDITIONAL_SENSE,
         SCSI_ASCQ_NO_ADDITIONAL_SENSE
      );

      sati_unmap_terminate(sequence, scsi_io, ata_io);
   }
   else
   {
      if (sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE)
      {

          sati_unmap_terminate(sequence, scsi_io, ata_io);
      }
      else
      {

          sati_status = SATI_SEQUENCE_STATE_INCOMPLETE;
      }
   }
   return sati_status;
}
