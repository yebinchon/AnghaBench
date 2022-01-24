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
typedef  int U32 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  ATA_IDENTIFY_DEVICE_DATA_T ;

/* Variables and functions */
 int SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 

U32 FUNC2(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   U32                          offset
)
{
   U32  lba_low     = 0;
   U32  lba_high    = 0;
   U32  sector_size = 0;

   // Extract the sector information (sector size, logical blocks) from
   // the retrieved ATA identify device data.
   FUNC0(
      identify, &lba_high, &lba_low, &sector_size
   );

   // Fill in the 4-byte logical block address field.
   FUNC1(sequence, scsi_io, offset,   (U8)((lba_low>>24) & 0xFF));
   FUNC1(sequence, scsi_io, offset+1, (U8)((lba_low>>16) & 0xFF));
   FUNC1(sequence, scsi_io, offset+2, (U8)((lba_low>>8)  & 0xFF));
   FUNC1(sequence, scsi_io, offset+3, (U8)(lba_low & 0xFF));

   // Clear the reserved field.
   FUNC1(sequence, scsi_io, offset+4, 0);

   // Fill in the three byte Block Length field
   FUNC1(sequence,scsi_io, offset+5, (U8)((sector_size>>16) & 0xFF));
   FUNC1(sequence,scsi_io, offset+6, (U8)((sector_size>>8)  & 0xFF));
   FUNC1(sequence,scsi_io, offset+7, (U8)(sector_size & 0xFF));

   return SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH;
}