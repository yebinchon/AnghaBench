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
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SCSI_ASCQ_SAVING_PARMS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  SCSI_ASC_SAVING_PARMS_NOT_SUPPORTED ; 
#define  SCSI_MODE_SENSE_PC_CHANGEABLE 131 
#define  SCSI_MODE_SENSE_PC_CURRENT 130 
#define  SCSI_MODE_SENSE_PC_DEFAULT 129 
#define  SCSI_MODE_SENSE_PC_SAVED 128 
 int SCSI_MODE_SENSE_PC_SHIFT ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SATI_STATUS FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io
)
{
   U8 * cdb = FUNC0(scsi_io);

   switch (FUNC1(cdb, 2) >> SCSI_MODE_SENSE_PC_SHIFT)
   {
      case SCSI_MODE_SENSE_PC_CURRENT:
      case SCSI_MODE_SENSE_PC_DEFAULT:
      case SCSI_MODE_SENSE_PC_CHANGEABLE:
         return SATI_SUCCESS;
      break;

      default:
      case SCSI_MODE_SENSE_PC_SAVED:
         FUNC2(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_SAVING_PARMS_NOT_SUPPORTED,
            SCSI_ASCQ_SAVING_PARMS_NOT_SUPPORTED
         );
         return SATI_FAILURE_CHECK_RESPONSE_DATA;
      break;
   }
}