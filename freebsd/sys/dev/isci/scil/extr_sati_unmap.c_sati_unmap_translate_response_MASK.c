#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_6__ {int /*<<< orphan*/  unmap_process_state; } ;
struct TYPE_7__ {scalar_t__ state; TYPE_1__ command_specific_data; } ;
typedef  int /*<<< orphan*/  SATI_UNMAP_PROCESSING_STATE_T ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  scalar_t__ SATI_STATUS ;

/* Variables and functions */
 int ATA_STATUS_REG_ERROR_BIT ; 
 scalar_t__ SATI_COMPLETE ; 
 scalar_t__ SATI_SEQUENCE_STATE_FINAL ; 
 scalar_t__ SATI_SEQUENCE_STATE_INCOMPLETE ; 
 int /*<<< orphan*/  SCSI_ASCQ_NO_ADDITIONAL_SENSE ; 
 int /*<<< orphan*/  SCSI_ASC_NO_ADDITIONAL_SENSE ; 
 int /*<<< orphan*/  SCSI_SENSE_ABORTED_COMMAND ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*,void*) ; 

SATI_STATUS FUNC4(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * register_fis = FUNC0(ata_io);
   SATI_UNMAP_PROCESSING_STATE_T * unmap_process_state;
   SATI_STATUS sati_status = SATI_COMPLETE;

   unmap_process_state = &sequence->command_specific_data.unmap_process_state;

   if (FUNC1(register_fis) & ATA_STATUS_REG_ERROR_BIT)
   {
      sequence->state = SATI_SEQUENCE_STATE_FINAL;
      FUNC2(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ABORTED_COMMAND,
         SCSI_ASC_NO_ADDITIONAL_SENSE,
         SCSI_ASCQ_NO_ADDITIONAL_SENSE
      );
      // All done, terminate the translation
      FUNC3(sequence, scsi_io, ata_io);
   }
   else
   {
      if (sequence->state != SATI_SEQUENCE_STATE_INCOMPLETE)
      {
          // All done, terminate the translation
          FUNC3(sequence, scsi_io, ata_io);
      }
      else
      {
          // Still translating
          sati_status = SATI_SEQUENCE_STATE_INCOMPLETE;
      }
   }
   return sati_status;
}