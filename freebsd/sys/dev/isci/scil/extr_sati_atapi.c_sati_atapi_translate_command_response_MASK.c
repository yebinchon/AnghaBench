#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int U8 ;
struct TYPE_6__ {int /*<<< orphan*/  state; TYPE_1__* device; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;
typedef  int /*<<< orphan*/  SATA_FIS_REG_D2H_T ;

/* Variables and functions */
 int ATA_STATUS_REG_DEVICE_FAULT_BIT ; 
 int ATA_STATUS_REG_ERROR_BIT ; 
 int /*<<< orphan*/  SATI_COMPLETE ; 
 int /*<<< orphan*/  SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SEQUENCE_INCOMPLETE ; 
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_INCOMPLETE ; 
 int /*<<< orphan*/  SCSI_ASCQ_INTERNAL_TARGET_FAILURE ; 
 int /*<<< orphan*/  SCSI_ASC_INTERNAL_TARGET_FAILURE ; 
 int /*<<< orphan*/  SCSI_SENSE_HARDWARE_ERROR ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SATI_STATUS FUNC4(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * atapi_io
)
{
   SATI_STATUS   status       = SATI_COMPLETE;
   U8          * register_fis = FUNC1(atapi_io);
   U8            ata_status;

   /**
    * If the device fault bit is set in the status register, then
    * set the sense data and return.
    */
   ata_status = (U8) FUNC2(register_fis);
   if (ata_status & ATA_STATUS_REG_DEVICE_FAULT_BIT)
   {
      FUNC3(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_HARDWARE_ERROR,
         SCSI_ASC_INTERNAL_TARGET_FAILURE,
         SCSI_ASCQ_INTERNAL_TARGET_FAILURE
      );

      sequence->device->state = SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED;

      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else if (ata_status & ATA_STATUS_REG_ERROR_BIT)
   {
       //reset the register_fis.
       FUNC0(register_fis, 0, sizeof(SATA_FIS_REG_D2H_T));

       //Internal Request Sense command is needed.
       sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
       return SATI_SEQUENCE_INCOMPLETE;
   }

   return status;
}