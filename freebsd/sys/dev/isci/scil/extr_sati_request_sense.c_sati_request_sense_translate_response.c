
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;



 int ATA_HIGH_REGISTER_THRESHOLD_EXCEEDED ;

 int ATA_MID_REGISTER_THRESHOLD_EXCEEDED ;

 int ATA_STATUS_REG_ERROR_BIT ;
 int SATI_COMPLETE ;
 int SATI_FAILURE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;


 int SCSI_ASCQ_GENERAL_HARD_DRIVE_FAILURE ;
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASCQ_POWER_STATE_CHANGE_TO_IDLE ;
 int SCSI_ASCQ_POWER_STATE_CHANGE_TO_STANDBY ;
 int SCSI_ASC_HARDWARE_IMPENDING_FAILURE ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_POWER_STATE_CHANGE ;
 int SCSI_SENSE_ABORTED_COMMAND ;
 int SCSI_SENSE_NO_SENSE ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_d2h_register_fis_address (void*) ;
 int sati_get_ata_lba_high (int *) ;
 int sati_get_ata_lba_mid (int *) ;
 int sati_get_ata_sector_count (int *) ;
 int sati_get_ata_status (int *) ;
 int sati_request_sense_data_response_construct (TYPE_1__*,void*,int ,int ,int ) ;
 int sati_scsi_sense_data_construct (TYPE_1__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_request_sense_translate_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);
   U32 mid_register;
   U32 high_register;
   U32 sector_count;
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
      switch(sequence->type)
      {
         case 128:

            mid_register = sati_get_ata_lba_mid(register_fis);
            high_register = sati_get_ata_lba_high(register_fis);
            if(mid_register == ATA_MID_REGISTER_THRESHOLD_EXCEEDED
               && high_register == ATA_HIGH_REGISTER_THRESHOLD_EXCEEDED)
            {
               sati_request_sense_data_response_construct(
                  sequence,
                  scsi_io,
                  SCSI_SENSE_NO_SENSE,
                  SCSI_ASC_HARDWARE_IMPENDING_FAILURE,
                  SCSI_ASCQ_GENERAL_HARD_DRIVE_FAILURE
               );
               status = SATI_COMPLETE;
            }
            else
            {
               sati_request_sense_data_response_construct(
                  sequence,
                  scsi_io,
                  SCSI_SENSE_NO_SENSE,
                  SCSI_ASC_NO_ADDITIONAL_SENSE,
                  SCSI_ASCQ_NO_ADDITIONAL_SENSE
               );
               status = SATI_COMPLETE;
            }
         break;

         case 129:

            sector_count = sati_get_ata_sector_count(register_fis);

            switch(sector_count)
            {
                case 130:
                   sati_request_sense_data_response_construct(
                      sequence,
                      scsi_io,
                      SCSI_SENSE_NO_SENSE,
                      SCSI_ASC_POWER_STATE_CHANGE,
                      SCSI_ASCQ_POWER_STATE_CHANGE_TO_STANDBY
                   );
                   status = SATI_COMPLETE;
                break;

                case 131:
                   sati_request_sense_data_response_construct(
                      sequence,
                      scsi_io,
                      SCSI_SENSE_NO_SENSE,
                      SCSI_ASC_POWER_STATE_CHANGE,
                      SCSI_ASCQ_POWER_STATE_CHANGE_TO_IDLE
                   );
                   status = SATI_COMPLETE;
                break;

                case 132:
                   sati_request_sense_data_response_construct(
                      sequence,
                      scsi_io,
                      SCSI_SENSE_NO_SENSE,
                      SCSI_ASC_NO_ADDITIONAL_SENSE,
                      SCSI_ASCQ_NO_ADDITIONAL_SENSE
                   );
                   status = SATI_COMPLETE;
                break;

                default:
                break;
             }
         break;

         default:
            sati_request_sense_data_response_construct(
               sequence,
               scsi_io,
               SCSI_SENSE_NO_SENSE,
               SCSI_ASC_NO_ADDITIONAL_SENSE,
               SCSI_ASCQ_NO_ADDITIONAL_SENSE
            );
            status = SATI_COMPLETE;
      }
   }

   return status;
}
