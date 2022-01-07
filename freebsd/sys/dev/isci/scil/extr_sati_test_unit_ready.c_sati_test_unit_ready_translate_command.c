
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int type; TYPE_1__* device; } ;
struct TYPE_6__ {scalar_t__ state; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 scalar_t__ SATI_DEVICE_STATE_FORMAT_UNIT_IN_PROGRESS ;
 scalar_t__ SATI_DEVICE_STATE_SELF_TEST_IN_PROGRESS ;
 scalar_t__ SATI_DEVICE_STATE_STOPPED ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_TEST_UNIT_READY ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_INITIALIZING_COMMAND_REQUIRED ;
 int SCSI_ASCQ_LUN_FORMAT_IN_PROGRESS ;
 int SCSI_ASCQ_LUN_SELF_TEST_IN_PROGRESS ;
 int SCSI_ASC_INITIALIZING_COMMAND_REQUIRED ;
 int SCSI_ASC_LUN_FORMAT_IN_PROGRESS ;
 int SCSI_ASC_LUN_SELF_TEST_IN_PROGRESS ;
 int SCSI_SENSE_NOT_READY ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int sati_ata_check_power_mode_construct (void*,TYPE_2__*) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_test_unit_ready_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   if (sequence->device->state == SATI_DEVICE_STATE_STOPPED)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_NOT_READY,
         SCSI_ASC_INITIALIZING_COMMAND_REQUIRED,
         SCSI_ASCQ_INITIALIZING_COMMAND_REQUIRED
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else if (sequence->device->state
            == SATI_DEVICE_STATE_SELF_TEST_IN_PROGRESS)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_NOT_READY,
         SCSI_ASC_LUN_SELF_TEST_IN_PROGRESS,
         SCSI_ASCQ_LUN_SELF_TEST_IN_PROGRESS
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else if (sequence->device->state
            == SATI_DEVICE_STATE_FORMAT_UNIT_IN_PROGRESS)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_NOT_READY,
         SCSI_ASC_LUN_FORMAT_IN_PROGRESS,
         SCSI_ASCQ_LUN_FORMAT_IN_PROGRESS
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }


   sequence->type = SATI_SEQUENCE_TEST_UNIT_READY;

   sati_ata_check_power_mode_construct(ata_io, sequence);
   return SATI_SUCCESS;
}
