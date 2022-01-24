#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SCSI_ASCQ_LBA_OUT_OF_RANGE ; 
 int /*<<< orphan*/  SCSI_ASC_LBA_OUT_OF_RANGE ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 

SATI_STATUS FUNC10(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb          = FUNC0(scsi_io);
   U8 * register_fis = FUNC1(ata_io);

   // Ensure we receive a logical block address that is within range of
   // addressibility per the ATA specification (i.e. 48-bit or 28-bit).
   if ( (FUNC2(cdb, 2) == 0) && (FUNC2(cdb, 3) == 0) )
   {
      FUNC6(register_fis, FUNC2(cdb, 9));
      FUNC8(register_fis, FUNC2(cdb, 8));
      FUNC4(register_fis, FUNC2(cdb, 7));
      FUNC7(register_fis, FUNC2(cdb, 6));
      FUNC9(register_fis, FUNC2(cdb, 5));
      FUNC5(register_fis, FUNC2(cdb, 4));
      return SATI_SUCCESS;
   }
   else
   {
      FUNC3(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_LBA_OUT_OF_RANGE,
         SCSI_ASCQ_LBA_OUT_OF_RANGE
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
}