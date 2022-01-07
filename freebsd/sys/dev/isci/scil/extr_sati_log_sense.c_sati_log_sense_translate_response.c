
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_7__ {int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_STATUS_REG_ERROR_BIT ;
 int SATI_COMPLETE ;
 int SATI_FAILURE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;



 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_SENSE_ABORTED_COMMAND ;
 int SCSI_STATUS_CHECK_CONDITION ;
 void* sati_cb_get_ata_data_address (void*) ;
 int * sati_cb_get_d2h_register_fis_address (void*) ;
 int sati_extended_self_test_log_page_construct (TYPE_1__*,void*,void*) ;
 int sati_get_ata_status (int *) ;
 int sati_information_exception_log_page_contruct (TYPE_1__*,void*,void*) ;
 int sati_scsi_sense_data_construct (TYPE_1__*,void*,int ,int ,int ,int ) ;
 int sati_self_test_log_page_construct (TYPE_1__*,void*,void*) ;

SATI_STATUS sati_log_sense_translate_response(
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
         SCSI_ASC_NO_ADDITIONAL_SENSE ,
         SCSI_ASCQ_NO_ADDITIONAL_SENSE
      );
      status = SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else
   {

      void * ata_data = sati_cb_get_ata_data_address(ata_io);

      if(ata_data == ((void*)0))
      {
         return SATI_FAILURE;
      }

      switch(sequence->type)
      {
         case 130:
            sati_extended_self_test_log_page_construct(
                                 sequence, scsi_io, ata_data
            );

            status = SATI_COMPLETE;
            break;

         case 128:
            sati_self_test_log_page_construct(sequence, scsi_io, ata_data);
            status = SATI_COMPLETE;
            break;

         case 129:

            sati_information_exception_log_page_contruct(
                                 sequence, scsi_io, ata_io
            );

            status = SATI_COMPLETE;
            break;

         default:
            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ABORTED_COMMAND,
               SCSI_ASC_NO_ADDITIONAL_SENSE ,
               SCSI_ASCQ_NO_ADDITIONAL_SENSE
            );
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
            break;
      }
   }
   return status;
}
