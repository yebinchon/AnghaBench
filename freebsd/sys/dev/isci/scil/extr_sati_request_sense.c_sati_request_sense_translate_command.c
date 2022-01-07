
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_8__ {int type; TYPE_1__* device; int allocation_length; } ;
struct TYPE_7__ {int state; int capabilities; int unit_attention_ascq; int unit_attention_asc; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_SMART_SUB_CMD_RETURN_STATUS ;
 int SATI_COMPLETE ;
 int SATI_DEVICE_CAP_SMART_ENABLE ;
 int SATI_DEVICE_CAP_SMART_SUPPORT ;





 int SATI_SEQUENCE_REQUEST_SENSE_CHECK_POWER_MODE ;
 int SATI_SEQUENCE_REQUEST_SENSE_SMART_RETURN_STATUS ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_IDLE_CONDITION_ACTIVATE_BY_COMMAND ;
 int SCSI_ASCQ_LUN_FORMAT_IN_PROGRESS ;
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASCQ_STANDBY_CONDITION_ACTIVATE_BY_COMMAND ;
 int SCSI_ASC_LUN_FORMAT_IN_PROGRESS ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_POWER_STATE_CHANGE ;
 int SCSI_SENSE_NOT_READY ;
 int SCSI_SENSE_NO_SENSE ;
 int SCSI_SENSE_UNIT_ATTENTION ;
 int SCSI_STATUS_GOOD ;
 int sati_ata_check_power_mode_construct (void*,TYPE_2__*) ;
 int sati_ata_smart_return_status_construct (void*,TYPE_2__*,int ) ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_request_sense_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);


   switch(sequence->device->state)
   {
      case 132:
         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_GOOD,
            SCSI_SENSE_NOT_READY,
            SCSI_ASC_LUN_FORMAT_IN_PROGRESS,
            SCSI_ASCQ_LUN_FORMAT_IN_PROGRESS
         );
         return SATI_COMPLETE;
      break;

      case 128:
         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_GOOD,
            SCSI_SENSE_UNIT_ATTENTION,
            sequence->device->unit_attention_asc,
            sequence->device->unit_attention_ascq
         );
         return SATI_COMPLETE;
      break;

      case 131:
         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_GOOD,
            SCSI_SENSE_NO_SENSE,
            SCSI_ASC_POWER_STATE_CHANGE,
            SCSI_ASCQ_IDLE_CONDITION_ACTIVATE_BY_COMMAND
         );
         return SATI_COMPLETE;
      break;

      case 130:
         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_GOOD,
            SCSI_SENSE_NO_SENSE,
            SCSI_ASC_POWER_STATE_CHANGE,
            SCSI_ASCQ_STANDBY_CONDITION_ACTIVATE_BY_COMMAND
         );
         return SATI_COMPLETE;
      break;

      case 129:
         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_GOOD,
            SCSI_SENSE_NO_SENSE,
            SCSI_ASC_NO_ADDITIONAL_SENSE,
            SCSI_ASCQ_NO_ADDITIONAL_SENSE
         );
         return SATI_COMPLETE;
      break;

      default:
      break;
   }

   sequence->allocation_length = sati_get_cdb_byte(cdb, 4);


   if(sequence->device->capabilities & SATI_DEVICE_CAP_SMART_SUPPORT)
   {
       if(sequence->device->capabilities & SATI_DEVICE_CAP_SMART_ENABLE)
       {
            sati_ata_smart_return_status_construct(
                           ata_io,
                           sequence,
                           ATA_SMART_SUB_CMD_RETURN_STATUS
            );

            sequence->type = SATI_SEQUENCE_REQUEST_SENSE_SMART_RETURN_STATUS;
            return SATI_SUCCESS;
        }
   }
   sati_ata_check_power_mode_construct(ata_io, sequence);
   sequence->type = SATI_SEQUENCE_REQUEST_SENSE_CHECK_POWER_MODE;
   return SATI_SUCCESS;
}
