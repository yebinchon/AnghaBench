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
typedef  scalar_t__ U32 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 scalar_t__ ATA_HIGH_REGISTER_THRESHOLD_EXCEEDED ; 
 scalar_t__ ATA_MID_REGISTER_THRESHOLD_EXCEEDED ; 
 int SCSI_ASCQ_GENERAL_HARD_DRIVE_FAILURE ; 
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ; 
 int SCSI_ASC_HARDWARE_IMPENDING_FAILURE ; 
 int SCSI_ASC_NO_ADDITIONAL_SENSE ; 
 int SCSI_LOG_PAGE_INFORMATION_EXCEPTION ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int,int) ; 

__attribute__((used)) static
void FUNC4(
   SATI_TRANSLATOR_SEQUENCE_T  * sequence,
   void                        * scsi_io,
   void                        * ata_io
)
{
   U8 * register_fis = FUNC0(ata_io);
   U32 mid_register = FUNC2(register_fis);
   U32 high_register = FUNC1(register_fis);

   //Information Exception Page code
   FUNC3(
      sequence,
      scsi_io,
      0,
      SCSI_LOG_PAGE_INFORMATION_EXCEPTION
   );

   //Sub-page code
   FUNC3(sequence, scsi_io, 1, 0x00);

   //Page length of log parameters
   FUNC3(sequence, scsi_io, 2, 0x00);
   FUNC3(sequence, scsi_io, 3, 0x08);

   //parameter code
   FUNC3(sequence, scsi_io, 4, 0x00);
   FUNC3(sequence, scsi_io, 5, 0x00);

   //Format and Linking
   FUNC3(sequence, scsi_io, 6, 0x03);
   //Parameter Length
   FUNC3(sequence, scsi_io, 7, 0x04);

   if(mid_register == ATA_MID_REGISTER_THRESHOLD_EXCEEDED
      && high_register == ATA_HIGH_REGISTER_THRESHOLD_EXCEEDED)
   {
      FUNC3(
         sequence,
         scsi_io,
         8,
         SCSI_ASC_HARDWARE_IMPENDING_FAILURE
      );

      FUNC3(
         sequence,
         scsi_io,
         9,
         SCSI_ASCQ_GENERAL_HARD_DRIVE_FAILURE
      );
   }
   else
   {
      FUNC3(sequence, scsi_io, 8, SCSI_ASC_NO_ADDITIONAL_SENSE);
      FUNC3(sequence, scsi_io, 9, SCSI_ASCQ_NO_ADDITIONAL_SENSE);
   }
   //setting most recent temperature reading to 0xFF(not supported) for now.
   FUNC3(sequence, scsi_io, 10, 0xFF);
}