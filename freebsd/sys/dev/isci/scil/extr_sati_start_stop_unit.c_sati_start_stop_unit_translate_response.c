
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_6__ {int translated_command; } ;
struct TYPE_8__ {scalar_t__ state; TYPE_2__* device; TYPE_1__ command_specific_data; } ;
struct TYPE_7__ {int state; } ;
typedef TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;
 int ATA_STATUS_REG_ERROR_BIT ;
 int SATI_COMPLETE ;
 int SATI_DEVICE_STATE_IDLE ;
 int SATI_DEVICE_STATE_OPERATIONAL ;
 int SATI_DEVICE_STATE_STANDBY ;
 int SATI_DEVICE_STATE_STOPPED ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_INCOMPLETE ;
 void* SATI_SEQUENCE_STATE_FINAL ;
 scalar_t__ SATI_SEQUENCE_STATE_INCOMPLETE ;
 int SATI_START_STOP_UNIT_POWER_CONDITION (int *) ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_COMMAND_SEQUENCE_ERROR ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_MEDIA_LOAD_OR_EJECT_FAILED ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_SENSE_ABORTED_COMMAND ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_SENSE_NO_SENSE ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int SCSI_STATUS_GOOD ;
 int * sati_cb_get_cdb_address (void*) ;
 int * sati_cb_get_d2h_register_fis_address (void*) ;
 int sati_get_ata_status (int *) ;
 int sati_scsi_sense_data_construct (TYPE_3__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_start_stop_unit_translate_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);

   if (sati_get_ata_status(register_fis) & ATA_STATUS_REG_ERROR_BIT)
   {
      switch ( sequence->command_specific_data.translated_command )
      {
         case 134:
         case 128:
         case 132:
         case 133:
         case 129:


         case 130:
            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ABORTED_COMMAND,
               SCSI_ASC_COMMAND_SEQUENCE_ERROR,
               SCSI_ASCQ_NO_ADDITIONAL_SENSE
            );
            break;

         case 131:
            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ABORTED_COMMAND,
               SCSI_ASC_MEDIA_LOAD_OR_EJECT_FAILED,
               SCSI_ASCQ_NO_ADDITIONAL_SENSE
            );
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
            break;
      }
      sequence->state = SATI_SEQUENCE_STATE_FINAL;
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else
   {
      switch ( sequence->command_specific_data.translated_command )
      {
         case 130:

            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_GOOD,
               SCSI_SENSE_NO_SENSE,
               SCSI_ASC_NO_ADDITIONAL_SENSE,
               SCSI_ASCQ_NO_ADDITIONAL_SENSE
            );

            sequence->device->state = SATI_DEVICE_STATE_OPERATIONAL;
            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            break;

         case 132:

            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_GOOD,
               SCSI_SENSE_NO_SENSE,
               SCSI_ASC_NO_ADDITIONAL_SENSE,
               SCSI_ASCQ_NO_ADDITIONAL_SENSE
            );
            sequence->device->state = SATI_DEVICE_STATE_IDLE;
            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            break;


         case 131:
         case 129:
         case 128:

            sati_scsi_sense_data_construct(
               sequence,
               scsi_io,
               SCSI_STATUS_GOOD,
               SCSI_SENSE_NO_SENSE,
               SCSI_ASC_NO_ADDITIONAL_SENSE,
               SCSI_ASCQ_NO_ADDITIONAL_SENSE
            );

            if( SATI_START_STOP_UNIT_POWER_CONDITION(cdb) == 0 )
            {
               sequence->device->state = SATI_DEVICE_STATE_STOPPED;
            }
            else
            {
               sequence->device->state = SATI_DEVICE_STATE_STANDBY;
            }
            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            break;

         default:

            break;
      }

      if (sequence->state == SATI_SEQUENCE_STATE_INCOMPLETE)
      {
         return SATI_SEQUENCE_INCOMPLETE;
      }
   }
   return SATI_COMPLETE;
}
