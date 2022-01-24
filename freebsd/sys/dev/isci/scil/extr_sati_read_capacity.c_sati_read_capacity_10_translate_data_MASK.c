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
typedef  int U8 ;
typedef  scalar_t__ U32 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  ATA_IDENTIFY_DEVICE_DATA_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int,int) ; 

void FUNC2(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * ata_input_data,
   void                       * scsi_io
)
{
   U32  lba_low     = 0;
   U32  lba_high    = 0;
   U32  sector_size = 0;

   // Extract the sector information (sector size, logical blocks) from
   // the retrieved ATA identify device data.
   FUNC0(
      (ATA_IDENTIFY_DEVICE_DATA_T*)ata_input_data,
      &lba_high,
      &lba_low,
      &sector_size
   );

   // SATA drives report a value that is one LBA larger than the last LBA.
   // SCSI wants the last LBA.  Make the correction here.  lba_low is
   // always decremented since it is an unsigned long the value 0 will
   // wrap to 0xFFFFFFFF.
   if ((lba_low == 0) && (lba_high == 0))
      lba_high -= 1;
   lba_low -= 1;

   if(lba_high != 0)
   {
      FUNC1(sequence, scsi_io, 0, 0xFF);
      FUNC1(sequence, scsi_io, 1, 0xFF);
      FUNC1(sequence, scsi_io, 2, 0xFF);
      FUNC1(sequence, scsi_io, 3, 0xFF);
   }
   else
   {
      // Build CDB for Read Capacity 10
      // Fill in the Logical Block Address bytes.
      FUNC1(sequence, scsi_io, 0, (U8)((lba_low >> 24) & 0xFF));
      FUNC1(sequence, scsi_io, 1, (U8)((lba_low >> 16) & 0xFF));
      FUNC1(sequence, scsi_io, 2, (U8)((lba_low >> 8)  & 0xFF));
      FUNC1(sequence, scsi_io, 3, (U8)(lba_low & 0xFF));
   }
   // Fill in the sector size field.
   FUNC1(sequence, scsi_io, 4, (U8)((sector_size >> 24) & 0xFF));
   FUNC1(sequence, scsi_io, 5, (U8)((sector_size >> 16) & 0xFF));
   FUNC1(sequence, scsi_io, 6, (U8)((sector_size >> 8)  & 0xFF));
   FUNC1(sequence, scsi_io, 7, (U8)(sector_size & 0xFF));
}