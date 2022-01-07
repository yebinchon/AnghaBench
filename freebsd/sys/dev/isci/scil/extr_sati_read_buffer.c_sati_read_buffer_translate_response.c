
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_5__ {int state; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_STATUS_REG_ERROR_BIT ;
 int SATI_COMPLETE ;
 int SATI_FAILURE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_STATE_FINAL ;
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_SENSE_ABORTED_COMMAND ;
 int SCSI_STATUS_CHECK_CONDITION ;
 void* sati_cb_get_ata_data_address (void*) ;
 int* sati_cb_get_d2h_register_fis_address (void*) ;
 int sati_copy_data (TYPE_1__*,void*,int ,void*,int) ;
 int sati_get_ata_status (int*) ;
 int sati_scsi_sense_data_construct (TYPE_1__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_read_buffer_translate_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);
   U8 ata_status = (U8) sati_get_ata_status(register_fis);
   SATI_STATUS status = SATI_COMPLETE;

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
      void * ata_data = sati_cb_get_ata_data_address(ata_io);

      if(ata_data == ((void*)0))
      {
         status = SATI_FAILURE;
      }
      else
      {

         sati_copy_data(
            sequence,
            scsi_io,
            0,
            ata_data,
            512
         );
      }
   }

   sequence->state = SATI_SEQUENCE_STATE_FINAL;
   return status;
}
