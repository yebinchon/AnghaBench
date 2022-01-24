#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  int U32 ;
struct TYPE_6__ {int allocation_length; void* state; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  SATI_COMPLETE ; 
 int /*<<< orphan*/  SATI_FAILURE ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
#define  SATI_READ_BUFFER_MODE_DATA 129 
#define  SATI_READ_BUFFER_MODE_DESCRIPTOR 128 
 int /*<<< orphan*/  SATI_SEQUENCE_READ_BUFFER ; 
 void* SATI_SEQUENCE_STATE_AWAIT_RESPONSE ; 
 void* SATI_SEQUENCE_STATE_FINAL ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SCSI_ASCQ_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,int,int) ; 

SATI_STATUS FUNC5(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb = FUNC1(scsi_io);
   SATI_STATUS status = SATI_FAILURE;
   U32 allocation_length;
   U32 buffer_offset;

   allocation_length = ((FUNC2(cdb, 6) << 16) |
                        (FUNC2(cdb, 7) << 8)  |
                        (FUNC2(cdb, 8)));

   buffer_offset = ((FUNC2(cdb, 3) << 16) |
                    (FUNC2(cdb, 4) << 8)  |
                    (FUNC2(cdb, 5)));

   sequence->allocation_length = allocation_length;

   switch(FUNC2(cdb, 1))
   {
      case SATI_READ_BUFFER_MODE_DATA:
         if((allocation_length == 512) && (buffer_offset == 0) &&
            (FUNC2(cdb, 2) == 0))
         {
            FUNC0(ata_io, sequence);
            sequence->type = SATI_SEQUENCE_READ_BUFFER;
            sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;
            status = SATI_SUCCESS;
         }
         else
         {
            FUNC3(
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

      case SATI_READ_BUFFER_MODE_DESCRIPTOR:

         //allocation legnth must be at least four to return translated data
         if(allocation_length < 4)
         {
            FUNC3(
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
         else
         {
            //figure out if we support other buffer id's
            FUNC4(sequence, scsi_io, 0, 0x09); //offset boundary
            FUNC4(sequence, scsi_io, 1, 0x00);
            FUNC4(sequence, scsi_io, 2, 0x02); //buffer capacity 0x200
            FUNC4(sequence, scsi_io, 3, 0x00);
            sequence->state = SATI_SEQUENCE_STATE_FINAL;
            status = SATI_COMPLETE;
         }
      break;

      default:
         //Unspecified sat2v7, returning invalid cdb
         FUNC3(
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
   return status;
}