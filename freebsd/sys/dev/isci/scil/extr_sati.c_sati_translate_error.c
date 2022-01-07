
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_4__ {scalar_t__ data_direction; int state; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;


 int ATA_ERROR_REG_ICRC_BIT ;
 int ATA_ERROR_REG_ID_NOT_FOUND_BIT ;
 int ATA_ERROR_REG_MEDIA_CHANGE_BIT ;
 int ATA_ERROR_REG_MEDIA_CHANGE_REQUEST_BIT ;
 int ATA_ERROR_REG_NO_MEDIA_BIT ;
 int ATA_ERROR_REG_UNCORRECTABLE_BIT ;
 int ATA_ERROR_REG_WRITE_PROTECTED_BIT ;
 scalar_t__ SATI_DATA_DIRECTION_OUT ;
 int SATI_SEQUENCE_STATE_READ_ERROR ;
 int SCSI_ASCQ_IU_CRC_ERROR_DETECTED ;
 int SCSI_ASCQ_LBA_OUT_OF_RANGE ;
 int SCSI_ASCQ_MEDIUM_NOT_PRESENT ;
 int SCSI_ASCQ_MEDIUM_REMOVAL_REQUEST ;
 int SCSI_ASCQ_NOT_READY_TO_READY_CHANGE ;
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASCQ_UNRECOVERED_READ_ERROR ;
 int SCSI_ASCQ_WRITE_PROTECTED ;
 int SCSI_ASC_IU_CRC_ERROR_DETECTED ;
 int SCSI_ASC_LBA_OUT_OF_RANGE ;
 int SCSI_ASC_MEDIUM_NOT_PRESENT ;
 int SCSI_ASC_MEDIUM_REMOVAL_REQUEST ;
 int SCSI_ASC_NOT_READY_TO_READY_CHANGE ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_UNRECOVERED_READ_ERROR ;
 int SCSI_ASC_WRITE_PROTECTED ;
 int SCSI_SENSE_ABORTED_COMMAND ;
 int SCSI_SENSE_DATA_PROTECT ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_SENSE_MEDIUM_ERROR ;
 int SCSI_SENSE_NOT_READY ;
 int SCSI_SENSE_UNIT_ATTENTION ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int sati_scsi_sense_data_construct (TYPE_1__*,void*,int ,int ,int ,int ) ;

void sati_translate_error(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   U8 error
)
{
   if (error & ATA_ERROR_REG_NO_MEDIA_BIT)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_NOT_READY,
         SCSI_ASC_MEDIUM_NOT_PRESENT,
         SCSI_ASCQ_MEDIUM_NOT_PRESENT
      );
   }
   else if (error & ATA_ERROR_REG_MEDIA_CHANGE_BIT)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_UNIT_ATTENTION,
         SCSI_ASC_NOT_READY_TO_READY_CHANGE,
         SCSI_ASCQ_NOT_READY_TO_READY_CHANGE
      );
   }
   else if (error & ATA_ERROR_REG_MEDIA_CHANGE_REQUEST_BIT)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_UNIT_ATTENTION,
         SCSI_ASC_MEDIUM_REMOVAL_REQUEST,
         SCSI_ASCQ_MEDIUM_REMOVAL_REQUEST
      );
   }
   else if (error & ATA_ERROR_REG_ID_NOT_FOUND_BIT)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_LBA_OUT_OF_RANGE,
         SCSI_ASCQ_LBA_OUT_OF_RANGE
      );
   }
   else if (error & ATA_ERROR_REG_UNCORRECTABLE_BIT)
   {


      sequence->state = SATI_SEQUENCE_STATE_READ_ERROR;
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_MEDIUM_ERROR,
         SCSI_ASC_UNRECOVERED_READ_ERROR,
         SCSI_ASCQ_UNRECOVERED_READ_ERROR
      );
   }
   else if ( (sequence->data_direction == SATI_DATA_DIRECTION_OUT)
           && (error & ATA_ERROR_REG_WRITE_PROTECTED_BIT) )
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_DATA_PROTECT,
         SCSI_ASC_WRITE_PROTECTED,
         SCSI_ASCQ_WRITE_PROTECTED
      );
   }
   else if (error & ATA_ERROR_REG_ICRC_BIT)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ABORTED_COMMAND,
         SCSI_ASC_IU_CRC_ERROR_DETECTED,
         SCSI_ASCQ_IU_CRC_ERROR_DETECTED
      );
   }
   else
   {



      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ABORTED_COMMAND,
         SCSI_ASC_NO_ADDITIONAL_SENSE,
         SCSI_ASCQ_NO_ADDITIONAL_SENSE
      );
   }
}
