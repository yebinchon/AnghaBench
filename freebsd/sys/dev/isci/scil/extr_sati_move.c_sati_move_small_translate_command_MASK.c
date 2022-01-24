#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_9__ {TYPE_1__* device; int /*<<< orphan*/  protocol; } ;
struct TYPE_8__ {int capabilities; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_READ_DMA ; 
 int /*<<< orphan*/  ATA_READ_DMA_EXT ; 
 int /*<<< orphan*/  ATA_READ_FPDMA ; 
 int /*<<< orphan*/  ATA_WRITE_DMA ; 
 int /*<<< orphan*/  ATA_WRITE_DMA_EXT ; 
 int /*<<< orphan*/  ATA_WRITE_FPDMA ; 
 int SATI_DEVICE_CAP_48BIT_ENABLE ; 
 int SATI_DEVICE_CAP_NCQ_SUPPORTED_ENABLE ; 
 int SATI_DEVICE_CAP_UDMA_ENABLE ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SAT_PROTOCOL_FPDMA ; 
 int /*<<< orphan*/  SCSI_ASCQ_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

SATI_STATUS FUNC9(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   // Translation of the sector count is performed differently for NCQ vs.
   // other protocols.
   if (sequence->device->capabilities & SATI_DEVICE_CAP_NCQ_SUPPORTED_ENABLE)
   {
      FUNC5(
         sequence, ata_io, ATA_WRITE_FPDMA, ATA_READ_FPDMA
      );
      FUNC4(scsi_io, ata_io);
      sequence->protocol = SAT_PROTOCOL_FPDMA;
   }
   else if (sequence->device->capabilities & SATI_DEVICE_CAP_48BIT_ENABLE)
   {
      U8 * cdb = FUNC0(scsi_io);

      FUNC6(
         sequence, scsi_io, ata_io, ATA_WRITE_DMA_EXT, ATA_READ_DMA_EXT
      );

      // A read/write 6 with a 0 sector count indicates a transfer of 256
      // sectors.  As a result update the MSB (features expanded register)
      // to indicate 256 sectors (0x100).
      if (FUNC2(cdb, 4) == 0)
      {
         U8 * register_fis = FUNC1(ata_io);
         FUNC8(register_fis, 1);
      }
   }
   else if (sequence->device->capabilities & SATI_DEVICE_CAP_UDMA_ENABLE)
   {
      FUNC6(
         sequence, scsi_io, ata_io, ATA_WRITE_DMA, ATA_READ_DMA
      );
   }
   else
   {
      /**
       * Currently the translation does not support devices incapable of
       * handling the 48-bit feature set (i.e. 16 bits of sector count).
       */
      FUNC7(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   return FUNC3(sequence, scsi_io, ata_io);
}