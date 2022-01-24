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
struct TYPE_5__ {int /*<<< orphan*/  state; int /*<<< orphan*/  is_translate_response_required; scalar_t__ protocol; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ PASSTHROUGH_DMA ; 
 scalar_t__ PASSTHROUGH_RETURN_RESPONSE ; 
 scalar_t__ PASSTHROUGH_UDMA_DATA_IN ; 
 scalar_t__ PASSTHROUGH_UDMA_DATA_OUT ; 
 scalar_t__ SATI_COMPLETE ; 
 int /*<<< orphan*/  SATI_FAILURE ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SEQUENCE_ATA_PASSTHROUGH_16 ; 
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_AWAIT_RESPONSE ; 
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_TRANSLATE_DATA ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SCSI_ASCQ_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC4 (void*) ; 
 int /*<<< orphan*/ * FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

SATI_STATUS FUNC22(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   SATI_STATUS   status;
   U8          * cdb;
   U8          * register_fis;

   status = SATI_FAILURE;

   sequence->type = SATI_SEQUENCE_ATA_PASSTHROUGH_16;
   sequence->state = SATI_SEQUENCE_STATE_TRANSLATE_DATA;

   cdb = FUNC4(scsi_io);
   sequence->protocol = FUNC2(cdb);
   register_fis = FUNC5(ata_io);

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
      if (FUNC3(cdb) == 0x1)
      {
         sequence->protocol = PASSTHROUGH_UDMA_DATA_IN;
      }
      else
      {
         sequence->protocol = PASSTHROUGH_UDMA_DATA_OUT;
      }
   }

   if (FUNC7(sequence, cdb) != SATI_COMPLETE
       || FUNC8(cdb)
      )
   {
      // Fail due to mismatch
      FUNC9(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   if (FUNC1(cdb) == 1)
   {
      FUNC13(register_fis, FUNC6(cdb, 3));
      FUNC21(register_fis, FUNC6(cdb, 5));
      FUNC17(register_fis, FUNC6(cdb, 7));
      FUNC19(register_fis, FUNC6(cdb, 9));
      FUNC15(register_fis, FUNC6(cdb, 11));
   }

   if (FUNC0(cdb) ||
       FUNC2(cdb) == PASSTHROUGH_RETURN_RESPONSE)
   {
      sequence->is_translate_response_required = TRUE;
   }

   FUNC12(register_fis, FUNC6(cdb, 4));
   FUNC20(register_fis, FUNC6(cdb, 6));
   FUNC16(register_fis, FUNC6(cdb, 8));
   FUNC18(register_fis, FUNC6(cdb, 10));
   FUNC14(register_fis, FUNC6(cdb, 12));
   FUNC11(register_fis, FUNC6(cdb, 13));
   FUNC10(register_fis, FUNC6(cdb, 14));

   sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;

   return SATI_SUCCESS;
}