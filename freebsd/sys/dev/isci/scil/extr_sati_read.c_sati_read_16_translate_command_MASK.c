#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  int U32 ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  scalar_t__ SATI_STATUS ;

/* Variables and functions */
 scalar_t__ SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SEQUENCE_READ_16 ; 
 scalar_t__ SATI_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,void*,void*,int,int /*<<< orphan*/ *) ; 

SATI_STATUS FUNC6(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   SATI_STATUS   status;
   U8            device_head  = 0;
   U8          * cdb          = FUNC0(scsi_io);
   U32           sector_count = (FUNC2(cdb, 10) << 24) |
                                (FUNC2(cdb, 11) << 16) |
                                (FUNC2(cdb, 12) << 8)  |
                                (FUNC2(cdb, 13));

   if(FUNC1(sequence, scsi_io))
   {
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else
   {
      sequence->type = SATI_SEQUENCE_READ_16;

      // Translate the sector count, write command register, and check various
      // other parts of the CDB.
      status = FUNC5(
                  sequence, scsi_io, ata_io, sector_count, &device_head
               );

      // Attempt to translate the 64-bit LBA field from the SCSI request
      // into the 48-bits of LBA in the ATA register FIS.
      if (status == SATI_SUCCESS)
      {
         FUNC4(sequence, scsi_io, ata_io, device_head);
         status = FUNC3(sequence, scsi_io, ata_io);
      }

      return status;
   }
}