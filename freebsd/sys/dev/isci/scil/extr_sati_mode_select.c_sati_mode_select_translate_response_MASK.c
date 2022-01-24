#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int ATA_STATUS_REG_ERROR_BIT ; 
 int /*<<< orphan*/  SATI_COMPLETE ; 
 int /*<<< orphan*/  SATI_FAILURE ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SEQUENCE_INCOMPLETE ; 
 scalar_t__ SATI_SEQUENCE_STATE_INCOMPLETE ; 
 int /*<<< orphan*/  SCSI_ASCQ_NO_ADDITIONAL_SENSE ; 
 int /*<<< orphan*/  SCSI_ASC_NO_ADDITIONAL_SENSE ; 
 int /*<<< orphan*/  SCSI_SENSE_ABORTED_COMMAND ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SATI_STATUS FUNC3(
SATI_TRANSLATOR_SEQUENCE_T * sequence,
void                       * scsi_io,
void                       * ata_io
)
{
   U8 * register_fis = FUNC0(ata_io);
   SATI_STATUS status = SATI_FAILURE;

   if(FUNC1(register_fis) & ATA_STATUS_REG_ERROR_BIT)
   {
      FUNC2(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ABORTED_COMMAND,
         SCSI_ASC_NO_ADDITIONAL_SENSE,
         SCSI_ASCQ_NO_ADDITIONAL_SENSE
      );
      status = SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else
   {
      if (sequence->state == SATI_SEQUENCE_STATE_INCOMPLETE)
      {
         status = SATI_SEQUENCE_INCOMPLETE;
      }
      else
      {
         status = SATI_COMPLETE;
      }
   }
   return status;
}