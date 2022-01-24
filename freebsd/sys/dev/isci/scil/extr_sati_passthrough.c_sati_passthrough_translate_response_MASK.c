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
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int ATA_STATUS_REG_ERROR_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ PASSTHROUGH_RETURN_RESPONSE ; 
 int /*<<< orphan*/  SATI_COMPLETE ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_FINAL ; 
 int /*<<< orphan*/  SCSI_ASCQ_ATA_PASS_THROUGH_INFORMATION_AVAILABLE ; 
 int /*<<< orphan*/  SCSI_ASC_NO_ADDITIONAL_SENSE ; 
 int /*<<< orphan*/  SCSI_SENSE_RECOVERED_ERROR ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/ * FUNC2 (void*) ; 
 int /*<<< orphan*/ * FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*,int /*<<< orphan*/ ) ; 

SATI_STATUS FUNC8(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb;
   U8 * register_fis;

   cdb = FUNC2(scsi_io);
   register_fis = FUNC3(ata_io);

   // Check for device errors
   if (FUNC5(register_fis) & ATA_STATUS_REG_ERROR_BIT)
   {
      FUNC7(sequence, scsi_io, (U8)FUNC4(register_fis));
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   sequence->state = SATI_SEQUENCE_STATE_FINAL;

   // If the user set the check condition bit, fill out the sense data
   if (FUNC0(cdb) ||
       FUNC1(cdb) == PASSTHROUGH_RETURN_RESPONSE)
   {
      FUNC6(
         sequence,
         register_fis,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_RECOVERED_ERROR,
         SCSI_ASC_NO_ADDITIONAL_SENSE,
         SCSI_ASCQ_ATA_PASS_THROUGH_INFORMATION_AVAILABLE
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   return SATI_COMPLETE;
}