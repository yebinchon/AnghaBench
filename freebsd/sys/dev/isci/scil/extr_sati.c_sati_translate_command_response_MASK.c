#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int U8 ;
struct TYPE_25__ {int /*<<< orphan*/  scratch; } ;
struct TYPE_26__ {int type; TYPE_2__ command_specific_data; int /*<<< orphan*/  state; TYPE_1__* device; } ;
struct TYPE_24__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  SATI_STATUS ;

/* Variables and functions */
 int ATA_STATUS_REG_DEVICE_FAULT_BIT ; 
 int ATA_STATUS_REG_ERROR_BIT ; 
 int /*<<< orphan*/  SATI_COMPLETE ; 
 int /*<<< orphan*/  SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED ; 
 int /*<<< orphan*/  SATI_FAILURE ; 
 int /*<<< orphan*/  SATI_FAILURE_CHECK_RESPONSE_DATA ; 
 int /*<<< orphan*/  SATI_FAILURE_INVALID_SEQUENCE_TYPE ; 
#define  SATI_SEQUENCE_ATA_PASSTHROUGH_12 182 
#define  SATI_SEQUENCE_ATA_PASSTHROUGH_16 181 
 int /*<<< orphan*/  SATI_SEQUENCE_INCOMPLETE ; 
#define  SATI_SEQUENCE_INQUIRY_ATA_INFORMATION 180 
#define  SATI_SEQUENCE_INQUIRY_BLOCK_DEVICE 179 
#define  SATI_SEQUENCE_INQUIRY_DEVICE_ID 178 
#define  SATI_SEQUENCE_INQUIRY_EXECUTE_DEVICE_DIAG 177 
#define  SATI_SEQUENCE_INQUIRY_SERIAL_NUMBER 176 
#define  SATI_SEQUENCE_INQUIRY_STANDARD 175 
#define  SATI_SEQUENCE_INQUIRY_SUPPORTED_PAGES 174 
#define  SATI_SEQUENCE_LOG_SENSE_EXTENDED_SELF_TEST_LOG_PAGE 173 
#define  SATI_SEQUENCE_LOG_SENSE_INFO_EXCEPTION_LOG_PAGE 172 
#define  SATI_SEQUENCE_LOG_SENSE_SELF_TEST_LOG_PAGE 171 
#define  SATI_SEQUENCE_LOG_SENSE_SUPPORTED_LOG_PAGE 170 
#define  SATI_SEQUENCE_MODE_SELECT_MODE_INFORMATION_EXCEPT_CONTROL 169 
#define  SATI_SEQUENCE_MODE_SELECT_MODE_PAGE_CACHING 168 
#define  SATI_SEQUENCE_MODE_SELECT_MODE_POWER_CONDITION 167 
#define  SATI_SEQUENCE_MODE_SENSE_10_ALL_PAGES 166 
#define  SATI_SEQUENCE_MODE_SENSE_10_CACHING 165 
#define  SATI_SEQUENCE_MODE_SENSE_10_CONTROL 164 
#define  SATI_SEQUENCE_MODE_SENSE_10_DISCONNECT_RECONNECT 163 
#define  SATI_SEQUENCE_MODE_SENSE_10_INFORMATIONAL_EXCP_CONTROL 162 
#define  SATI_SEQUENCE_MODE_SENSE_10_POWER_CONDITION 161 
#define  SATI_SEQUENCE_MODE_SENSE_10_READ_WRITE_ERROR 160 
#define  SATI_SEQUENCE_MODE_SENSE_6_ALL_PAGES 159 
#define  SATI_SEQUENCE_MODE_SENSE_6_CACHING 158 
#define  SATI_SEQUENCE_MODE_SENSE_6_CONTROL 157 
#define  SATI_SEQUENCE_MODE_SENSE_6_DISCONNECT_RECONNECT 156 
#define  SATI_SEQUENCE_MODE_SENSE_6_INFORMATIONAL_EXCP_CONTROL 155 
#define  SATI_SEQUENCE_MODE_SENSE_6_POWER_CONDITION 154 
#define  SATI_SEQUENCE_MODE_SENSE_6_READ_WRITE_ERROR 153 
#define  SATI_SEQUENCE_READ_10 152 
#define  SATI_SEQUENCE_READ_12 151 
#define  SATI_SEQUENCE_READ_16 150 
#define  SATI_SEQUENCE_READ_6 149 
#define  SATI_SEQUENCE_READ_BUFFER 148 
#define  SATI_SEQUENCE_READ_CAPACITY_10 147 
#define  SATI_SEQUENCE_READ_CAPACITY_16 146 
#define  SATI_SEQUENCE_REASSIGN_BLOCKS 145 
#define  SATI_SEQUENCE_REQUEST_SENSE_CHECK_POWER_MODE 144 
#define  SATI_SEQUENCE_REQUEST_SENSE_SMART_RETURN_STATUS 143 
#define  SATI_SEQUENCE_START_STOP_UNIT 142 
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_FINAL ; 
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_READ_ERROR ; 
#define  SATI_SEQUENCE_SYNCHRONIZE_CACHE 141 
#define  SATI_SEQUENCE_TEST_UNIT_READY 140 
#define  SATI_SEQUENCE_UNMAP 139 
#define  SATI_SEQUENCE_VERIFY_10 138 
#define  SATI_SEQUENCE_VERIFY_12 137 
#define  SATI_SEQUENCE_VERIFY_16 136 
#define  SATI_SEQUENCE_WRITE_10 135 
#define  SATI_SEQUENCE_WRITE_12 134 
#define  SATI_SEQUENCE_WRITE_16 133 
#define  SATI_SEQUENCE_WRITE_6 132 
#define  SATI_SEQUENCE_WRITE_AND_VERIFY 131 
#define  SATI_SEQUENCE_WRITE_BUFFER 130 
#define  SATI_SEQUENCE_WRITE_BUFFER_MICROCODE 129 
#define  SATI_SEQUENCE_WRITE_LONG 128 
 int /*<<< orphan*/  SCSI_ASCQ_INTERNAL_TARGET_FAILURE ; 
 int /*<<< orphan*/  SCSI_ASCQ_UNRECOVERED_READ_ERROR ; 
 int /*<<< orphan*/  SCSI_ASC_INTERNAL_TARGET_FAILURE ; 
 int /*<<< orphan*/  SCSI_ASC_UNRECOVERED_READ_ERROR ; 
 int /*<<< orphan*/  SCSI_SENSE_HARDWARE_ERROR ; 
 int /*<<< orphan*/  SCSI_SENSE_MEDIUM_ERROR ; 
 int /*<<< orphan*/  SCSI_STATUS_CHECK_CONDITION ; 
 void* FUNC0 (void*) ; 
 int* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,void*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,void*,void*) ; 

SATI_STATUS FUNC23(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   SATI_STATUS   status       = SATI_COMPLETE;
   U8          * register_fis = FUNC1(ata_io);
   U8            ata_status;

   /**
    * If the device fault bit is set in the status register, then
    * set the sense data and return.
    */
   ata_status = (U8) FUNC4(register_fis);
   if (ata_status & ATA_STATUS_REG_DEVICE_FAULT_BIT)
   {
      FUNC13(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_HARDWARE_ERROR,
         SCSI_ASC_INTERNAL_TARGET_FAILURE,
         SCSI_ASCQ_INTERNAL_TARGET_FAILURE
      );

      sequence->device->state = SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED;

      // Make sure that the terminate sequence is called to allow
      // translation logic to perform any cleanup before the IO is completed.
      FUNC14(sequence,
                              scsi_io,
                              ata_io);

      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   // Look at the sequence type to determine the response translation method
   // to invoke.
   switch (sequence->type)
   {
#if !defined(DISABLE_SATI_TEST_UNIT_READY)
      case SATI_SEQUENCE_TEST_UNIT_READY:
         status = FUNC16(
                     sequence, scsi_io, ata_io
                  );
      break;
#endif // !defined(DISABLE_SATI_TEST_UNIT_READY)

#if    !defined(DISABLE_SATI_INQUIRY)        \
    || !defined(DISABLE_SATI_READY_CAPACITY) \
    || !defined(DISABLE_SATI_MODE_SENSE)

      case SATI_SEQUENCE_INQUIRY_EXECUTE_DEVICE_DIAG:

         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            U8  error = (U8) FUNC3(register_fis);
            status    = SATI_FAILURE_CHECK_RESPONSE_DATA;
            FUNC18(sequence, scsi_io, error);
         }
         else
         {
            FUNC5(
               sequence,
               scsi_io,
               ata_io
            );
            status = FUNC2(sequence);
         }
      break;

      case SATI_SEQUENCE_INQUIRY_STANDARD:
      case SATI_SEQUENCE_INQUIRY_SUPPORTED_PAGES:
      case SATI_SEQUENCE_INQUIRY_SERIAL_NUMBER:
      case SATI_SEQUENCE_INQUIRY_BLOCK_DEVICE:
      case SATI_SEQUENCE_INQUIRY_ATA_INFORMATION:
      case SATI_SEQUENCE_INQUIRY_DEVICE_ID:
      case SATI_SEQUENCE_READ_CAPACITY_10:
      case SATI_SEQUENCE_READ_CAPACITY_16:
      case SATI_SEQUENCE_MODE_SENSE_6_CACHING:
      case SATI_SEQUENCE_MODE_SENSE_6_INFORMATIONAL_EXCP_CONTROL:
      case SATI_SEQUENCE_MODE_SENSE_6_READ_WRITE_ERROR:
      case SATI_SEQUENCE_MODE_SENSE_6_DISCONNECT_RECONNECT:
      case SATI_SEQUENCE_MODE_SENSE_6_CONTROL:
      case SATI_SEQUENCE_MODE_SENSE_6_POWER_CONDITION:
      case SATI_SEQUENCE_MODE_SENSE_6_ALL_PAGES:
      case SATI_SEQUENCE_MODE_SENSE_10_CACHING:
      case SATI_SEQUENCE_MODE_SENSE_10_INFORMATIONAL_EXCP_CONTROL:
      case SATI_SEQUENCE_MODE_SENSE_10_READ_WRITE_ERROR:
      case SATI_SEQUENCE_MODE_SENSE_10_CONTROL:
      case SATI_SEQUENCE_MODE_SENSE_10_POWER_CONDITION:
      case SATI_SEQUENCE_MODE_SENSE_10_DISCONNECT_RECONNECT:
      case SATI_SEQUENCE_MODE_SENSE_10_ALL_PAGES:
         // Did an error occur during the IO request?
         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            U8  error = (U8) FUNC3(register_fis);
            status    = SATI_FAILURE_CHECK_RESPONSE_DATA;
            FUNC18(sequence, scsi_io, error);
         }
         else
         {
            void * ata_data = FUNC0(ata_io);

            if(ata_data == NULL)
            {
               status = SATI_FAILURE;
            }
            else
            {
               FUNC17(sequence, ata_data, scsi_io);
               status = FUNC2(sequence);
            }
         }
      break;
#endif //    !defined(DISABLE_SATI_INQUIRY)
       // && !defined(DISABLE_SATI_READY_CAPACITY)
       // && !defined(DISABLE_SATI_MODE_SENSE)

#if !defined(DISABLE_SATI_MODE_SELECT)
      case SATI_SEQUENCE_MODE_SELECT_MODE_PAGE_CACHING:

         status = FUNC7(
            sequence, scsi_io, ata_io
               );
         if(status == SATI_COMPLETE)
         {
            status = FUNC2(sequence);
         }
         break;

      case SATI_SEQUENCE_MODE_SELECT_MODE_POWER_CONDITION:
      case SATI_SEQUENCE_MODE_SELECT_MODE_INFORMATION_EXCEPT_CONTROL:
         // Did an error occur during the IO request?
         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            U8  error = (U8) FUNC3(register_fis);
            status    = SATI_FAILURE_CHECK_RESPONSE_DATA;
            FUNC18(sequence, scsi_io, error);
         }
         else
         {
            status = FUNC2(sequence);
         }
      break;
#endif // !defined(DISABLE_SATI_MODE_SELECT)

#if !defined(DISABLE_SATI_WRITE_AND_VERIFY)
      case SATI_SEQUENCE_WRITE_AND_VERIFY:

         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            U8  error = (U8) FUNC3(register_fis);
            FUNC18(sequence, scsi_io, error);

            return SATI_FAILURE_CHECK_RESPONSE_DATA;
         }
         else
         {
            status = FUNC20(
                        sequence,
                        scsi_io,
                        ata_io
                     );
         }
      break;
#endif // !defined(DISABLE_SATI_WRITE_AND_VERIFY)

      case SATI_SEQUENCE_READ_6:
      case SATI_SEQUENCE_READ_10:
      case SATI_SEQUENCE_READ_12:
      case SATI_SEQUENCE_READ_16:
      case SATI_SEQUENCE_WRITE_6:
      case SATI_SEQUENCE_WRITE_10:
      case SATI_SEQUENCE_WRITE_12:
      case SATI_SEQUENCE_WRITE_16:
      case SATI_SEQUENCE_VERIFY_10:
      case SATI_SEQUENCE_VERIFY_12:
      case SATI_SEQUENCE_VERIFY_16:
      case SATI_SEQUENCE_SYNCHRONIZE_CACHE:
         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            U8  error = (U8) FUNC3(register_fis);
            status    = SATI_FAILURE_CHECK_RESPONSE_DATA;
            FUNC18(sequence, scsi_io, error);

            if(sequence->state == SATI_SEQUENCE_STATE_READ_ERROR )
            {
               FUNC12(
                  sequence,
                  scsi_io,
                  ata_io,
                  SCSI_STATUS_CHECK_CONDITION,
                  SCSI_SENSE_MEDIUM_ERROR,
                  SCSI_ASC_UNRECOVERED_READ_ERROR,
                  SCSI_ASCQ_UNRECOVERED_READ_ERROR
               );
               sequence->state = SATI_SEQUENCE_STATE_FINAL;
            }
         }
         else
         {
            // We haven't satisified the transfer count from the original
            // SCSI CDB.  As a result, we need to re-issue the command
            // with updated logical block address and transfer count.
            if (sequence->command_specific_data.scratch)
            {
               /** @todo update the contents of the CDB directly?  Should be
                *  done during previous command translation?
                */
               status = SATI_SEQUENCE_INCOMPLETE;
            }
         }
      break;

#if !defined(DISABLE_SATI_READ_BUFFER)
      case SATI_SEQUENCE_READ_BUFFER:
         status = FUNC9(
                     sequence, scsi_io, ata_io
                  );

         if(status == SATI_COMPLETE)
         {
            status = FUNC2(sequence);
         }
      break;
#endif //!defined(DISABLE_SATI_READ_BUFFER)

#if !defined(DISABLE_SATI_WRITE_BUFFER)
      case SATI_SEQUENCE_WRITE_BUFFER:
      case SATI_SEQUENCE_WRITE_BUFFER_MICROCODE:
         status = FUNC21(
                     sequence, scsi_io, ata_io
                  );
      break;
#endif //!defined(DISABLE_SATI_WRITE_BUFFER)

#if !defined(DISABLE_SATI_REASSIGN_BLOCKS)
      case SATI_SEQUENCE_REASSIGN_BLOCKS:
         status = FUNC10(
                     sequence, scsi_io, ata_io
                  );
         if(status == SATI_COMPLETE)
         {
            status = FUNC2(sequence);
         }
      break;
#endif // !defined(DISABLE_SATI_REASSIGN_BLOCKS)

#if !defined(DISABLE_SATI_START_STOP_UNIT)
      case SATI_SEQUENCE_START_STOP_UNIT:
         status = FUNC15(
                     sequence, scsi_io, ata_io
                  );
         if(status == SATI_COMPLETE)
         {
            status = FUNC2(sequence);
         }
      break;
#endif // !defined(DISABLE_SATI_START_STOP_UNIT)

#if !defined(DISABLE_SATI_REQUEST_SENSE)
      case SATI_SEQUENCE_REQUEST_SENSE_SMART_RETURN_STATUS:
      case SATI_SEQUENCE_REQUEST_SENSE_CHECK_POWER_MODE:
         status = FUNC11(
                     sequence, scsi_io, ata_io
                  );
         if(status == SATI_COMPLETE)
         {
            status = FUNC2(sequence);
         }
      break;
#endif // !defined(DISABLE_SATI_REQUEST_SENSE)

#if !defined(DISABLE_SATI_WRITE_LONG)
      case SATI_SEQUENCE_WRITE_LONG:
         status = FUNC22(
                     sequence, scsi_io, ata_io
                  );
         if(status == SATI_COMPLETE)
         {
            status = FUNC2(sequence);
         }
      break;
#endif // !defined(DISABLE_SATI_WRITE_LONG)

#if !defined(DISABLE_SATI_LOG_SENSE)
      case SATI_SEQUENCE_LOG_SENSE_SUPPORTED_LOG_PAGE:
      case SATI_SEQUENCE_LOG_SENSE_SELF_TEST_LOG_PAGE:
      case SATI_SEQUENCE_LOG_SENSE_EXTENDED_SELF_TEST_LOG_PAGE:
      case SATI_SEQUENCE_LOG_SENSE_INFO_EXCEPTION_LOG_PAGE:
         status = FUNC6(
                     sequence, scsi_io, ata_io
                  );
         if(status == SATI_COMPLETE)
         {
            status = FUNC2(sequence);
         }
      break;
#endif // !defined(DISABLE_SATI_LOG_SENSE)

#if !defined(DISABLE_SATI_UNMAP)
      case SATI_SEQUENCE_UNMAP:
         status = FUNC19(
                     sequence, scsi_io, ata_io
                  );
      break;
#endif // !defined(DISABLE_SATI_UNMAP)

#if !defined(DISABLE_SATI_ATA_PASSTHROUGH)
      case SATI_SEQUENCE_ATA_PASSTHROUGH_12:
      case SATI_SEQUENCE_ATA_PASSTHROUGH_16:
         status = FUNC8(
                     sequence, scsi_io, ata_io
                  );
      break;
#endif // !defined(DISABLE_SATI_ATA_PASSTHROUGH)

      default:
         status = SATI_FAILURE_INVALID_SEQUENCE_TYPE;
      break;
   }

   return status;
}