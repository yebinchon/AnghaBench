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
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ATA_IDENTIFY_SERIAL_NUMBER_LEN ; 
 int SCSI_INQUIRY_UNIT_SERIAL_NUM_PAGE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int,int) ; 
 int /*<<< orphan*/  serial_number ; 

void FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * ata_input_data,
   void                       * scsi_io
)
{
   // Peripheral qualifier (0x0, currently connected)
   // Peripheral device type (0x0 direct-access block device)
   FUNC2(sequence, scsi_io, 0, 0x00);

   FUNC2(sequence, scsi_io, 1, SCSI_INQUIRY_UNIT_SERIAL_NUM_PAGE);
   FUNC2(sequence, scsi_io, 2, 0x00);  // Reserved
   FUNC2(sequence, scsi_io, 3, ATA_IDENTIFY_SERIAL_NUMBER_LEN);

   FUNC1(
      sequence,
      scsi_io,
      4,
      ata_input_data,
      FUNC0(serial_number),
      ATA_IDENTIFY_SERIAL_NUMBER_LEN,
      TRUE
   );
}