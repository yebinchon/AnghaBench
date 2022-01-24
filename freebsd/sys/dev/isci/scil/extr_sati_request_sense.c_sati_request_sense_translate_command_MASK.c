#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_8__ {int /*<<< orphan*/  type; TYPE_1__* device; int /*<<< orphan*/  allocation_length; } ;
struct TYPE_7__ {int state; int capabilities; int /*<<< orphan*/  unit_attention_ascq; int /*<<< orphan*/  unit_attention_asc; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_SMART_SUB_CMD_RETURN_STATUS ; 
 int /*<<< orphan*/  SATI_COMPLETE ; 
 int SATI_DEVICE_CAP_SMART_ENABLE ; 
 int SATI_DEVICE_CAP_SMART_SUPPORT ; 
#define  SATI_DEVICE_STATE_FORMAT_UNIT_IN_PROGRESS 132 
#define  SATI_DEVICE_STATE_IDLE 131 
#define  SATI_DEVICE_STATE_STANDBY 130 
#define  SATI_DEVICE_STATE_STOPPED 129 
#define  SATI_DEVICE_STATE_UNIT_ATTENTION_CONDITION 128 
 int /*<<< orphan*/  SATI_SEQUENCE_REQUEST_SENSE_CHECK_POWER_MODE ; 
 int /*<<< orphan*/  SATI_SEQUENCE_REQUEST_SENSE_SMART_RETURN_STATUS ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SCSI_ASCQ_IDLE_CONDITION_ACTIVATE_BY_COMMAND ; 
 int /*<<< orphan*/  SCSI_ASCQ_LUN_FORMAT_IN_PROGRESS ; 
 int /*<<< orphan*/  SCSI_ASCQ_NO_ADDITIONAL_SENSE ; 
 int /*<<< orphan*/  SCSI_ASCQ_STANDBY_CONDITION_ACTIVATE_BY_COMMAND ; 
 int /*<<< orphan*/  SCSI_ASC_LUN_FORMAT_IN_PROGRESS ; 
 int /*<<< orphan*/  SCSI_ASC_NO_ADDITIONAL_SENSE ; 
 int /*<<< orphan*/  SCSI_ASC_POWER_STATE_CHANGE ; 
 int /*<<< orphan*/  SCSI_SENSE_NOT_READY ; 
 int /*<<< orphan*/  SCSI_SENSE_NO_SENSE ; 
 int /*<<< orphan*/  SCSI_SENSE_UNIT_ATTENTION ; 
 int /*<<< orphan*/  SCSI_STATUS_GOOD ; 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SATI_STATUS FUNC5(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb = FUNC2(scsi_io);

   //check if SATI is processing format unit command
   switch(sequence->device->state)
   {
      case SATI_DEVICE_STATE_FORMAT_UNIT_IN_PROGRESS:
         FUNC4(
            sequence,
            scsi_io,
            SCSI_STATUS_GOOD,
            SCSI_SENSE_NOT_READY,
            SCSI_ASC_LUN_FORMAT_IN_PROGRESS,
            SCSI_ASCQ_LUN_FORMAT_IN_PROGRESS
         );
         return SATI_COMPLETE;
      break;

      case SATI_DEVICE_STATE_UNIT_ATTENTION_CONDITION:
         FUNC4(
            sequence,
            scsi_io,
            SCSI_STATUS_GOOD,
            SCSI_SENSE_UNIT_ATTENTION,
            sequence->device->unit_attention_asc,
            sequence->device->unit_attention_ascq
         );
         return SATI_COMPLETE;
      break;
      //sending sense data status Idle, this is set by start_stop_unit
      case SATI_DEVICE_STATE_IDLE:
         FUNC4(
            sequence,
            scsi_io,
            SCSI_STATUS_GOOD,
            SCSI_SENSE_NO_SENSE,
            SCSI_ASC_POWER_STATE_CHANGE,
            SCSI_ASCQ_IDLE_CONDITION_ACTIVATE_BY_COMMAND
         );
         return SATI_COMPLETE;
      break;
      //sending sense data status Standby, this is set by start_stop_unit
      case SATI_DEVICE_STATE_STANDBY:
         FUNC4(
            sequence,
            scsi_io,
            SCSI_STATUS_GOOD,
            SCSI_SENSE_NO_SENSE,
            SCSI_ASC_POWER_STATE_CHANGE,
            SCSI_ASCQ_STANDBY_CONDITION_ACTIVATE_BY_COMMAND
         );
         return SATI_COMPLETE;
      break;

      case SATI_DEVICE_STATE_STOPPED:
         FUNC4(
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

   sequence->allocation_length = FUNC3(cdb, 4);

   //Check if the device has SMART support & SMART enabled
   if(sequence->device->capabilities & SATI_DEVICE_CAP_SMART_SUPPORT)
   {
       if(sequence->device->capabilities & SATI_DEVICE_CAP_SMART_ENABLE)
       {
            FUNC1(
                           ata_io,
                           sequence,
                           ATA_SMART_SUB_CMD_RETURN_STATUS
            );

            sequence->type = SATI_SEQUENCE_REQUEST_SENSE_SMART_RETURN_STATUS;
            return SATI_SUCCESS;
        }
   }
   FUNC0(ata_io, sequence);
   sequence->type = SATI_SEQUENCE_REQUEST_SENSE_CHECK_POWER_MODE;
   return SATI_SUCCESS;
}