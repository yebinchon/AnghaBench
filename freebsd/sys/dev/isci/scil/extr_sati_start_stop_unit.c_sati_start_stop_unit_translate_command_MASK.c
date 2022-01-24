#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_15__ {void* translated_command; } ;
struct TYPE_16__ {void* state; int /*<<< orphan*/  type; TYPE_2__ command_specific_data; TYPE_1__* device; } ;
struct TYPE_14__ {int capabilities; } ;
typedef  TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 void* ATA_FLUSH_CACHE ; 
 void* ATA_IDLE ; 
 void* ATA_IDLE_IMMED ; 
 void* ATA_MEDIA_EJECT ; 
 void* ATA_READ_VERIFY_SECTORS ; 
 void* ATA_STANDBY ; 
 void* ATA_STANDBY_IMMED ; 
 int SATI_DEVICE_CAP_REMOVABLE_MEDIA ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SEQUENCE_START_STOP_UNIT ; 
 void* SATI_SEQUENCE_STATE_INCOMPLETE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SCSI_ASCQ_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
#define  SCSI_START_STOP_UNIT_POWER_CONDITION_ACTIVE 133 
#define  SCSI_START_STOP_UNIT_POWER_CONDITION_FORCE_S_CONTROL 132 
#define  SCSI_START_STOP_UNIT_POWER_CONDITION_IDLE 131 
#define  SCSI_START_STOP_UNIT_POWER_CONDITION_LU_CONTROL 130 
#define  SCSI_START_STOP_UNIT_POWER_CONDITION_STANDBY 129 
#define  SCSI_START_STOP_UNIT_POWER_CONDITION_START_VALID 128 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC6 (void*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (void*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (void*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (void*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (void*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (void*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (void*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SATI_STATUS FUNC16(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb = FUNC14(scsi_io);

   switch ( FUNC3(cdb) )
   {
      case SCSI_START_STOP_UNIT_POWER_CONDITION_START_VALID:
         if ( FUNC5(cdb) == 0
             && FUNC1(cdb) == 0 )
         {
            if ( FUNC2(cdb) == 1 )
            {
               //directly send ATA STANDBY_IMMEDIATE
               FUNC13(ata_io, sequence);
               sequence->command_specific_data.translated_command = ATA_STANDBY_IMMED;
            }
            else
            {
               if ( sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE )
               {
                  //First, send ATA flush command.
                  FUNC6(ata_io, sequence);
                  sequence->command_specific_data.translated_command = ATA_FLUSH_CACHE;

                  //remember there is next step.
                  sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
               }
               else
               {
                  //the first step, flush cache command, has completed.
                  //Send standby immediate now.
                  FUNC13(ata_io, sequence);
                  sequence->command_specific_data.translated_command = ATA_STANDBY_IMMED;

               }
            }
         }
         else if ( FUNC5(cdb) == 0
                  && FUNC1(cdb) == 1 )
         {
            //need to know whether the device supports removable medial feature set.
            if (sequence->device->capabilities & SATI_DEVICE_CAP_REMOVABLE_MEDIA)
            {
               //send ATA MEDIA EJECT command.
               FUNC10(ata_io, sequence);
               sequence->command_specific_data.translated_command = ATA_MEDIA_EJECT;
            }
            else
            {
               FUNC15(
                  sequence,
                  scsi_io,
                  SCSI_STATUS_CHECK_CONDITION,
                  SCSI_SENSE_ILLEGAL_REQUEST,
                  SCSI_ASC_INVALID_FIELD_IN_CDB,
                  SCSI_ASCQ_INVALID_FIELD_IN_CDB
               );
               return SATI_FAILURE_CHECK_RESPONSE_DATA;
            }
         }
         else if ( FUNC5(cdb) == 1
                  && FUNC1(cdb) == 0 )
         {
            //send an ATA verify command
            FUNC11(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_READ_VERIFY_SECTORS;
         }
         else if ( FUNC5(cdb) == 1
                  && FUNC1(cdb) == 1 )
         {
            FUNC15(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ILLEGAL_REQUEST,
               SCSI_ASC_INVALID_FIELD_IN_CDB,
               SCSI_ASCQ_INVALID_FIELD_IN_CDB
            );
            return SATI_FAILURE_CHECK_RESPONSE_DATA;
         }

         break;
      //Power Condition Field is set to 0x01(Device to transition to Active state)
      case SCSI_START_STOP_UNIT_POWER_CONDITION_ACTIVE:

         if( sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE )
         {
            FUNC7(ata_io, sequence);
            sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
            sequence->command_specific_data.translated_command = ATA_IDLE;
         }
         else
         {
            FUNC11(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_READ_VERIFY_SECTORS;
         }
         break;

      //Power Condition Field is set to 0x02(Device to transition to Idle state)
      case SCSI_START_STOP_UNIT_POWER_CONDITION_IDLE:

         if( FUNC2(cdb) == 0 &&
             sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE )
         {
            FUNC6(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_FLUSH_CACHE;
            sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
         }
         else
         {
            if( FUNC4(cdb) == 0 )
            {
               FUNC8(ata_io, sequence);
            }
            else
            {
               FUNC9(ata_io, sequence);
            }
            sequence->command_specific_data.translated_command = ATA_IDLE_IMMED;
         }
         break;

      //Power Condition Field is set to 0x03(Device to transition to Standby state)
      case SCSI_START_STOP_UNIT_POWER_CONDITION_STANDBY:
         if( FUNC2(cdb) == 0 &&
            sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE )
         {
            FUNC6(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_FLUSH_CACHE;
            sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
         }
         else
         {
            FUNC13(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_STANDBY_IMMED;
         }
         break;

      //Power Condition Field is set to 0xB(force Standby state)
      case SCSI_START_STOP_UNIT_POWER_CONDITION_FORCE_S_CONTROL:

         if( FUNC2(cdb) == 0 &&
            sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE )
         {
            FUNC6(ata_io, sequence);
            sequence->command_specific_data.translated_command = ATA_FLUSH_CACHE;
            sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
         }
         else
         {
            FUNC12(ata_io, sequence, 0);
            sequence->command_specific_data.translated_command = ATA_STANDBY;
         }
         break;

      case SCSI_START_STOP_UNIT_POWER_CONDITION_LU_CONTROL:
      default:  //TBD.
         FUNC15(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_INVALID_FIELD_IN_CDB,
            SCSI_ASCQ_INVALID_FIELD_IN_CDB
         );
         return SATI_FAILURE_CHECK_RESPONSE_DATA;
         break;
   }

   if ( FUNC0(cdb) == 1 )
   {
      //@todo: return good status now.
      ;
   }
   sequence->type = SATI_SEQUENCE_START_STOP_UNIT;
   return SATI_SUCCESS;
}