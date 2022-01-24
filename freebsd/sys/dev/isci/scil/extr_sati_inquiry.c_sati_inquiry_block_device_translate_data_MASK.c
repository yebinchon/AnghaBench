#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int U32 ;
struct TYPE_2__ {int device_nominal_form_factor; } ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;
typedef  TYPE_1__ ATA_IDENTIFY_DEVICE_DATA_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int SCSI_INQUIRY_BLOCK_DEVICE_LENGTH ; 
 int SCSI_INQUIRY_BLOCK_DEVICE_PAGE ; 
 int /*<<< orphan*/  nominal_media_rotation_rate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int,int) ; 

void FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * ata_input_data,
   void                       * scsi_io
)
{
   ATA_IDENTIFY_DEVICE_DATA_T * identify = (ATA_IDENTIFY_DEVICE_DATA_T*)
      ata_input_data;

   U32 offset;

   // Peripheral qualifier (0x0, currently connected)
   // Peripheral device type (0x0 direct-access block device)
   FUNC2(sequence, scsi_io, 0, 0x00);

   FUNC2(sequence, scsi_io, 1, SCSI_INQUIRY_BLOCK_DEVICE_PAGE);

   //PAGE LENGTH 0x003C
   FUNC2(sequence, scsi_io, 2, 0x00);
   FUNC2(sequence, scsi_io, 3, SCSI_INQUIRY_BLOCK_DEVICE_LENGTH);

   FUNC1(
      sequence,
      scsi_io,
      4,
      ata_input_data,
      FUNC0(nominal_media_rotation_rate),
      2,
      FALSE
    );

    FUNC2(sequence, scsi_io, 6, 0x00);

    FUNC2(
       sequence,
       scsi_io,
       7,
       (identify->device_nominal_form_factor & 0x0F) // only need bits 0-3
    );

    //bytes 8-63 are reserved
    for(offset = 8; offset < 64; offset++)
    {
       FUNC2(sequence, scsi_io, offset, 0x00);
    }
}