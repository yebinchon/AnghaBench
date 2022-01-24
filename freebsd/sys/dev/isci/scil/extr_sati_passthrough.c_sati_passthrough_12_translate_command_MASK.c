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
struct TYPE_5__ {int /*<<< orphan*/  state; int /*<<< orphan*/  protocol; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PASSTHROUGH_DMA ; 
 int /*<<< orphan*/  PASSTHROUGH_UDMA_DATA_IN ; 
 int /*<<< orphan*/  PASSTHROUGH_UDMA_DATA_OUT ; 
 scalar_t__ SATI_COMPLETE ; 
 int /*<<< orphan*/  SATI_FAILURE ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SEQUENCE_ATA_PASSTHROUGH_12 ; 
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_AWAIT_RESPONSE ; 
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_TRANSLATE_DATA ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SCSI_ASCQ_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/ * FUNC2 (void*) ; 
 int /*<<< orphan*/ * FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

SATI_STATUS FUNC15(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   SATI_STATUS   status;
   U8          * cdb;
   U8          * register_fis;

   status = SATI_FAILURE;

   sequence->type = SATI_SEQUENCE_ATA_PASSTHROUGH_12;
   sequence->state = SATI_SEQUENCE_STATE_TRANSLATE_DATA;

   cdb = FUNC2(scsi_io);
   sequence->protocol = FUNC0 (cdb);
   register_fis = FUNC3(ata_io);

   /*
    * CAM will send passthrough commands with protocol set to multiword
    * DMA even though no multiword DMA mode is selected on the device.
    * This is because some controllers (LSI) will only accept
    * ATA_PASSTHROUGH commands with DMA mode - not UDMA_IN/OUT.
    *
    * Since isci does not support multiword DMA, fix this up here.
    */
   if (sequence->protocol == PASSTHROUGH_DMA)
   {
      if (FUNC1(cdb) == 0x1)
      {
         sequence->protocol = PASSTHROUGH_UDMA_DATA_IN;
      }
      else
      {
         sequence->protocol = PASSTHROUGH_UDMA_DATA_OUT;
      }
   }

   if (FUNC5(sequence, cdb) != SATI_COMPLETE
       || FUNC6(cdb)
      )
   {
      // Fail due to mismatch
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

   FUNC10(register_fis, FUNC4(cdb, 3));
   FUNC14(register_fis, FUNC4(cdb, 4));
   FUNC12(register_fis, FUNC4(cdb, 5));
   FUNC13(register_fis, FUNC4(cdb, 6));
   FUNC11(register_fis, FUNC4(cdb, 7));
   FUNC9(register_fis, FUNC4(cdb, 8));
   FUNC8(register_fis, FUNC4(cdb, 9));

   sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;

   return SATI_SUCCESS;
}