#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_6__ {TYPE_1__* device; int /*<<< orphan*/  data_direction; int /*<<< orphan*/  protocol; } ;
struct TYPE_5__ {int capabilities; } ;
typedef  TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DEV_HEAD_REG_LBA_MODE_ENABLE ; 
 int /*<<< orphan*/  ATA_READ_VERIFY_SECTORS ; 
 int /*<<< orphan*/  ATA_READ_VERIFY_SECTORS_EXT ; 
 int /*<<< orphan*/  SATI_DATA_DIRECTION_NONE ; 
 int SATI_DEVICE_CAP_48BIT_ENABLE ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_SUCCESS ; 
 int /*<<< orphan*/  SAT_PROTOCOL_NON_DATA ; 
 int /*<<< orphan*/  SCSI_ASCQ_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_FIELD_IN_CDB ; 
 int /*<<< orphan*/  SCSI_SENSE_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 int SCSI_VERIFY_BYTCHK_ENABLED ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SATI_STATUS FUNC6(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * cdb          = FUNC0(scsi_io);
   U8 * register_fis = FUNC1(ata_io);

   /**
    * The translator doesn't support performing the byte check operation.
    * As a result, error the request if the BYTCHK bit is set.
    */
   if ((FUNC2(cdb, 1) & SCSI_VERIFY_BYTCHK_ENABLED))
   {
      FUNC3(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   sequence->protocol       = SAT_PROTOCOL_NON_DATA;
   sequence->data_direction = SATI_DATA_DIRECTION_NONE;

   FUNC5(register_fis, ATA_DEV_HEAD_REG_LBA_MODE_ENABLE);

   // Ensure the device supports the 48 bit feature set.
   if (sequence->device->capabilities & SATI_DEVICE_CAP_48BIT_ENABLE)
      FUNC4(register_fis, ATA_READ_VERIFY_SECTORS_EXT);
   else
      FUNC4(register_fis, ATA_READ_VERIFY_SECTORS);

   return SATI_SUCCESS;
}