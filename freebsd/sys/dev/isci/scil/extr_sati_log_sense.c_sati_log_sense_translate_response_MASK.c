#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_7__ {int type; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int ATA_STATUS_REG_ERROR_BIT ; 
 int /*<<< orphan*/  SATI_COMPLETE ; 
 int /*<<< orphan*/  SATI_FAILURE ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
#define  SATI_SEQUENCE_LOG_SENSE_EXTENDED_SELF_TEST_LOG_PAGE 130 
#define  SATI_SEQUENCE_LOG_SENSE_INFO_EXCEPTION_LOG_PAGE 129 
#define  SATI_SEQUENCE_LOG_SENSE_SELF_TEST_LOG_PAGE 128 
 int /*<<< orphan*/  SCSI_ASCQ_NO_ADDITIONAL_SENSE ; 
 int /*<<< orphan*/  SCSI_ASC_NO_ADDITIONAL_SENSE ; 
 int /*<<< orphan*/  SCSI_SENSE_ABORTED_COMMAND ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,void*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void*,void*) ; 

SATI_STATUS FUNC7(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * register_fis = FUNC1(ata_io);
   SATI_STATUS status = SATI_FAILURE;

   if(FUNC3(register_fis) & ATA_STATUS_REG_ERROR_BIT)
   {
      FUNC5(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ABORTED_COMMAND,
         SCSI_ASC_NO_ADDITIONAL_SENSE ,
         SCSI_ASCQ_NO_ADDITIONAL_SENSE
      );
      status = SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else
   {

      void * ata_data = FUNC0(ata_io);

      if(ata_data == NULL)
      {
         return SATI_FAILURE;
      }

      switch(sequence->type)
      {
         case SATI_SEQUENCE_LOG_SENSE_EXTENDED_SELF_TEST_LOG_PAGE:
            FUNC2(
                                 sequence, scsi_io, ata_data
            );

            status = SATI_COMPLETE;
            break;

         case SATI_SEQUENCE_LOG_SENSE_SELF_TEST_LOG_PAGE:
            FUNC6(sequence, scsi_io, ata_data);
            status = SATI_COMPLETE;
            break;

         case SATI_SEQUENCE_LOG_SENSE_INFO_EXCEPTION_LOG_PAGE:
            //This function needs a d->h register fis, not ata data
            FUNC4(
                                 sequence, scsi_io, ata_io
            );

            status = SATI_COMPLETE;
            break;

         default:
            FUNC5(
               sequence,
               scsi_io,
               SCSI_STATUS_CHECK_CONDITION,
               SCSI_SENSE_ABORTED_COMMAND,
               SCSI_ASC_NO_ADDITIONAL_SENSE ,
               SCSI_ASCQ_NO_ADDITIONAL_SENSE
            );
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
            break;
      }
   }
   return status;
}