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
typedef  int U32 ;
struct TYPE_8__ {int allocation_length; void* state; void* type; TYPE_1__* device; } ;
struct TYPE_7__ {int max_blocks_per_microcode_command; int min_blocks_per_microcode_command; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_MICROCODE_DOWNLOAD_SAVE ; 
 int /*<<< orphan*/  ATA_MICROCODE_OFFSET_DOWNLOAD ; 
 int DOWNLOAD_MICROCODE_BLOCK_SIZE ; 
 int /*<<< orphan*/  SATI_FAILURE ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 void* SATI_SEQUENCE_STATE_AWAIT_RESPONSE ; 
 void* SATI_SEQUENCE_STATE_FINAL ; 
 void* SATI_SEQUENCE_WRITE_BUFFER ; 
 void* SATI_SEQUENCE_WRITE_BUFFER_MICROCODE ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SCSI_ASCQ_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
#define  WRITE_BUFFER_DOWNLOAD_SAVE 130 
#define  WRITE_BUFFER_OFFSET_DOWNLOAD_SAVE 129 
#define  WRITE_BUFFER_WRITE_DATA 128 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SATI_STATUS FUNC5(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb = FUNC2(scsi_io);
   SATI_STATUS status = SATI_FAILURE;
   U32 allocation_length;
   U32 allocation_blocks;
   U32 buffer_offset;

   allocation_length = ((FUNC3(cdb, 6) << 16) |
                        (FUNC3(cdb, 7) << 8)  |
                        (FUNC3(cdb, 8)));

   buffer_offset = ((FUNC3(cdb, 3) << 16) |
                    (FUNC3(cdb, 4) << 8)  |
                    (FUNC3(cdb, 5)));

   sequence->allocation_length = allocation_length;
   allocation_blocks = allocation_length / DOWNLOAD_MICROCODE_BLOCK_SIZE;

   switch(FUNC3(cdb, 1))
   {
      case WRITE_BUFFER_WRITE_DATA:
         if((allocation_length == DOWNLOAD_MICROCODE_BLOCK_SIZE) && 
            (buffer_offset == 0) &&
            (FUNC3(cdb, 2) == 0))
         {
            FUNC1(ata_io, sequence);
            sequence->type = SATI_SEQUENCE_WRITE_BUFFER;
            sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;
            status = SATI_SUCCESS;
         }
         else
         {
            FUNC4(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ILLEGAL_REQUEST,
               SCSI_ASC_INVALID_FIELD_IN_CDB,
               SCSI_ASCQ_INVALID_FIELD_IN_CDB
            );

            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
         }
      break;

      case WRITE_BUFFER_DOWNLOAD_SAVE:

         FUNC0(
            ata_io,
            sequence,
            ATA_MICROCODE_DOWNLOAD_SAVE,
            allocation_length,
            buffer_offset
         );

         sequence->type = SATI_SEQUENCE_WRITE_BUFFER_MICROCODE;
         sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;
         status = SATI_SUCCESS;
      break;

      case WRITE_BUFFER_OFFSET_DOWNLOAD_SAVE:
         if(((allocation_length & 0x000001FF) == 0) && //Bits 08:00 need to be zero per SAT2v7
            ((buffer_offset & 0x000001FF) == 0)     &&
            (allocation_blocks <= sequence->device->max_blocks_per_microcode_command) &&
            ((allocation_blocks >= sequence->device->min_blocks_per_microcode_command) ||
            (allocation_length == 0)))
         {
            FUNC0(
               ata_io,
               sequence,
               ATA_MICROCODE_OFFSET_DOWNLOAD,
               allocation_length,
               buffer_offset
            );

            sequence->type = SATI_SEQUENCE_WRITE_BUFFER_MICROCODE;
            sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;
            status = SATI_SUCCESS;
         }
         else
         {
            FUNC4(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ILLEGAL_REQUEST,
               SCSI_ASC_INVALID_FIELD_IN_CDB,
               SCSI_ASCQ_INVALID_FIELD_IN_CDB
            );

            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
         }
      break;

      default: //unsupported Write Buffer Mode
         FUNC4(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_INVALID_FIELD_IN_CDB,
            SCSI_ASCQ_INVALID_FIELD_IN_CDB
         );

         sequence->state = SATI_SEQUENCE_STATE_FINAL;
         status = SATI_FAILURE_CHECK_RESPONSE_DATA;
      break;
   }
   return status;
}