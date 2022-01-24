#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_5__ {int /*<<< orphan*/  type; int /*<<< orphan*/  allocation_length; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SEQUENCE_READ_CAPACITY_10 ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SCSI_ASCQ_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_READ_CAPACITY_10_DATA_LENGTH ; 
 int SCSI_READ_CAPACITY_PMI_BIT_ENABLE ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC0 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SATI_STATUS FUNC4(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb = FUNC1(scsi_io);

   /**
    * SAT dictates:
    * - the LBA field must be 0
    * - the PMI bit must be 0
    */
   if (
         (
            (FUNC2(cdb, 2) != 0)
         || (FUNC2(cdb, 3) != 0)
         || (FUNC2(cdb, 4) != 0)
         || (FUNC2(cdb, 5) != 0)
         )
         || ((FUNC2(cdb, 8) & SCSI_READ_CAPACITY_PMI_BIT_ENABLE)
              == 1)
      )
   {
      FUNC3(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   // The CDB is properly formed.
   sequence->allocation_length = SCSI_READ_CAPACITY_10_DATA_LENGTH;
   sequence->type              = SATI_SEQUENCE_READ_CAPACITY_10;

   FUNC0(ata_io, sequence);
   return SATI_SUCCESS;
}