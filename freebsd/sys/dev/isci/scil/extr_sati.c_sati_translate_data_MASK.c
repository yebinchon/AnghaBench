#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int type; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef  int /*<<< orphan*/  ATA_IDENTIFY_DEVICE_DATA_T ;

/* Variables and functions */
#define  SATI_SEQUENCE_INQUIRY_ATA_INFORMATION 148 
#define  SATI_SEQUENCE_INQUIRY_BLOCK_DEVICE 147 
#define  SATI_SEQUENCE_INQUIRY_DEVICE_ID 146 
#define  SATI_SEQUENCE_INQUIRY_SERIAL_NUMBER 145 
#define  SATI_SEQUENCE_INQUIRY_STANDARD 144 
#define  SATI_SEQUENCE_MODE_SENSE_10_ALL_PAGES 143 
#define  SATI_SEQUENCE_MODE_SENSE_10_CACHING 142 
#define  SATI_SEQUENCE_MODE_SENSE_10_CONTROL 141 
#define  SATI_SEQUENCE_MODE_SENSE_10_DISCONNECT_RECONNECT 140 
#define  SATI_SEQUENCE_MODE_SENSE_10_INFORMATIONAL_EXCP_CONTROL 139 
#define  SATI_SEQUENCE_MODE_SENSE_10_POWER_CONDITION 138 
#define  SATI_SEQUENCE_MODE_SENSE_10_READ_WRITE_ERROR 137 
#define  SATI_SEQUENCE_MODE_SENSE_6_ALL_PAGES 136 
#define  SATI_SEQUENCE_MODE_SENSE_6_CACHING 135 
#define  SATI_SEQUENCE_MODE_SENSE_6_CONTROL 134 
#define  SATI_SEQUENCE_MODE_SENSE_6_DISCONNECT_RECONNECT 133 
#define  SATI_SEQUENCE_MODE_SENSE_6_INFORMATIONAL_EXCP_CONTROL 132 
#define  SATI_SEQUENCE_MODE_SENSE_6_POWER_CONDITION 131 
#define  SATI_SEQUENCE_MODE_SENSE_6_READ_WRITE_ERROR 130 
#define  SATI_SEQUENCE_READ_CAPACITY_10 129 
#define  SATI_SEQUENCE_READ_CAPACITY_16 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,void*,void*) ; 

__attribute__((used)) static
void FUNC22(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * ata_input_data,
   void                       * scsi_io
)
{
   // Update the device capabilities in the odd/crazy event something changed.
   FUNC0(
      sequence->device, (ATA_IDENTIFY_DEVICE_DATA_T*) ata_input_data
   );

   // Look at the first byte to determine the SCSI command to translate.
   switch (sequence->type)
   {
#if !defined(DISABLE_SATI_INQUIRY)
      case SATI_SEQUENCE_INQUIRY_STANDARD:
         FUNC5(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_INQUIRY_SERIAL_NUMBER:
         FUNC4(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_INQUIRY_DEVICE_ID:
         FUNC3(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_INQUIRY_BLOCK_DEVICE:
         FUNC2(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_INQUIRY_ATA_INFORMATION:
         FUNC1(
            sequence, ata_input_data, scsi_io
         );
      break;

#endif // !defined(DISABLE_SATI_INQUIRY)

#if !defined(DISABLE_SATI_READ_CAPACITY)
      case SATI_SEQUENCE_READ_CAPACITY_10:
         FUNC20(sequence, ata_input_data, scsi_io);
      break;

      case SATI_SEQUENCE_READ_CAPACITY_16:
         FUNC21(sequence, ata_input_data, scsi_io);
      break;
#endif // !defined(DISABLE_SATI_READ_CAPACITY)

#if !defined(DISABLE_SATI_MODE_SENSE)
      case SATI_SEQUENCE_MODE_SENSE_6_CACHING:
         FUNC14(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_6_INFORMATIONAL_EXCP_CONTROL:
         FUNC17(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_6_READ_WRITE_ERROR:
         FUNC19(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_6_DISCONNECT_RECONNECT:
         FUNC16(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_6_CONTROL:
         FUNC15(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_6_ALL_PAGES:
         FUNC13(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_6_POWER_CONDITION:
         FUNC18(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_10_POWER_CONDITION:
         FUNC11(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_10_CACHING:
         FUNC7(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_10_INFORMATIONAL_EXCP_CONTROL:
         FUNC10(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_10_READ_WRITE_ERROR:
         FUNC12(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_10_DISCONNECT_RECONNECT:
         FUNC9(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_10_CONTROL:
         FUNC8(
            sequence, ata_input_data, scsi_io
         );
      break;

      case SATI_SEQUENCE_MODE_SENSE_10_ALL_PAGES:
         FUNC6(
            sequence, ata_input_data, scsi_io
         );
      break;
#endif // !defined(DISABLE_SATI_MODE_SENSE)

      default:
      break;
   }
}