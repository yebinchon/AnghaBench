
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_25__ {int scratch; } ;
struct TYPE_26__ {int type; TYPE_2__ command_specific_data; int state; TYPE_1__* device; } ;
struct TYPE_24__ {int state; } ;
typedef TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_STATUS_REG_DEVICE_FAULT_BIT ;
 int ATA_STATUS_REG_ERROR_BIT ;
 int SATI_COMPLETE ;
 int SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED ;
 int SATI_FAILURE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_FAILURE_INVALID_SEQUENCE_TYPE ;


 int SATI_SEQUENCE_INCOMPLETE ;
 int SATI_SEQUENCE_STATE_FINAL ;
 int SATI_SEQUENCE_STATE_READ_ERROR ;
 int SCSI_ASCQ_INTERNAL_TARGET_FAILURE ;
 int SCSI_ASCQ_UNRECOVERED_READ_ERROR ;
 int SCSI_ASC_INTERNAL_TARGET_FAILURE ;
 int SCSI_ASC_UNRECOVERED_READ_ERROR ;
 int SCSI_SENSE_HARDWARE_ERROR ;
 int SCSI_SENSE_MEDIUM_ERROR ;
 int SCSI_STATUS_CHECK_CONDITION ;
 void* sati_cb_get_ata_data_address (void*) ;
 int* sati_cb_get_d2h_register_fis_address (void*) ;
 int sati_check_data_io (TYPE_3__*) ;
 scalar_t__ sati_get_ata_error (int*) ;
 scalar_t__ sati_get_ata_status (int*) ;
 int sati_inquiry_ata_information_finish_translation (TYPE_3__*,void*,void*) ;
 int sati_log_sense_translate_response (TYPE_3__*,void*,void*) ;
 int sati_mode_select_translate_response (TYPE_3__*,void*,void*) ;
 int sati_passthrough_translate_response (TYPE_3__*,void*,void*) ;
 int sati_read_buffer_translate_response (TYPE_3__*,void*,void*) ;
 int sati_reassign_blocks_translate_response (TYPE_3__*,void*,void*) ;
 int sati_request_sense_translate_response (TYPE_3__*,void*,void*) ;
 int sati_scsi_read_error_sense_construct (TYPE_3__*,void*,void*,int ,int ,int ,int ) ;
 int sati_scsi_sense_data_construct (TYPE_3__*,void*,int ,int ,int ,int ) ;
 int sati_sequence_terminate (TYPE_3__*,void*,void*) ;
 int sati_start_stop_unit_translate_response (TYPE_3__*,void*,void*) ;
 int sati_test_unit_ready_translate_response (TYPE_3__*,void*,void*) ;
 int sati_translate_data (TYPE_3__*,void*,void*) ;
 int sati_translate_error (TYPE_3__*,void*,int) ;
 int sati_unmap_translate_response (TYPE_3__*,void*,void*) ;
 int sati_write_and_verify_translate_response (TYPE_3__*,void*,void*) ;
 int sati_write_buffer_translate_response (TYPE_3__*,void*,void*) ;
 int sati_write_long_translate_response (TYPE_3__*,void*,void*) ;

SATI_STATUS sati_translate_command_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_STATUS status = SATI_COMPLETE;
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);
   U8 ata_status;





   ata_status = (U8) sati_get_ata_status(register_fis);
   if (ata_status & ATA_STATUS_REG_DEVICE_FAULT_BIT)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_HARDWARE_ERROR,
         SCSI_ASC_INTERNAL_TARGET_FAILURE,
         SCSI_ASCQ_INTERNAL_TARGET_FAILURE
      );

      sequence->device->state = SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED;



      sati_sequence_terminate(sequence,
                              scsi_io,
                              ata_io);

      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }



   switch (sequence->type)
   {

      case 140:
         status = sati_test_unit_ready_translate_response(
                     sequence, scsi_io, ata_io
                  );
      break;






      case 177:

         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            U8 error = (U8) sati_get_ata_error(register_fis);
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
            sati_translate_error(sequence, scsi_io, error);
         }
         else
         {
            sati_inquiry_ata_information_finish_translation(
               sequence,
               scsi_io,
               ata_io
            );
            status = sati_check_data_io(sequence);
         }
      break;

      case 175:
      case 174:
      case 176:
      case 179:
      case 180:
      case 178:
      case 147:
      case 146:
      case 158:
      case 155:
      case 153:
      case 156:
      case 157:
      case 154:
      case 159:
      case 165:
      case 162:
      case 160:
      case 164:
      case 161:
      case 163:
      case 166:

         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            U8 error = (U8) sati_get_ata_error(register_fis);
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
            sati_translate_error(sequence, scsi_io, error);
         }
         else
         {
            void * ata_data = sati_cb_get_ata_data_address(ata_io);

            if(ata_data == ((void*)0))
            {
               status = SATI_FAILURE;
            }
            else
            {
               sati_translate_data(sequence, ata_data, scsi_io);
               status = sati_check_data_io(sequence);
            }
         }
      break;





      case 168:

         status = sati_mode_select_translate_response(
            sequence, scsi_io, ata_io
               );
         if(status == SATI_COMPLETE)
         {
            status = sati_check_data_io(sequence);
         }
         break;

      case 167:
      case 169:

         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            U8 error = (U8) sati_get_ata_error(register_fis);
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
            sati_translate_error(sequence, scsi_io, error);
         }
         else
         {
            status = sati_check_data_io(sequence);
         }
      break;



      case 131:

         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            U8 error = (U8) sati_get_ata_error(register_fis);
            sati_translate_error(sequence, scsi_io, error);

            return SATI_FAILURE_CHECK_RESPONSE_DATA;
         }
         else
         {
            status = sati_write_and_verify_translate_response(
                        sequence,
                        scsi_io,
                        ata_io
                     );
         }
      break;


      case 149:
      case 152:
      case 151:
      case 150:
      case 132:
      case 135:
      case 134:
      case 133:
      case 138:
      case 137:
      case 136:
      case 141:
         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            U8 error = (U8) sati_get_ata_error(register_fis);
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
            sati_translate_error(sequence, scsi_io, error);

            if(sequence->state == SATI_SEQUENCE_STATE_READ_ERROR )
            {
               sati_scsi_read_error_sense_construct(
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



            if (sequence->command_specific_data.scratch)
            {



               status = SATI_SEQUENCE_INCOMPLETE;
            }
         }
      break;


      case 148:
         status = sati_read_buffer_translate_response(
                     sequence, scsi_io, ata_io
                  );

         if(status == SATI_COMPLETE)
         {
            status = sati_check_data_io(sequence);
         }
      break;



      case 130:
      case 129:
         status = sati_write_buffer_translate_response(
                     sequence, scsi_io, ata_io
                  );
      break;



      case 145:
         status = sati_reassign_blocks_translate_response(
                     sequence, scsi_io, ata_io
                  );
         if(status == SATI_COMPLETE)
         {
            status = sati_check_data_io(sequence);
         }
      break;



      case 142:
         status = sati_start_stop_unit_translate_response(
                     sequence, scsi_io, ata_io
                  );
         if(status == SATI_COMPLETE)
         {
            status = sati_check_data_io(sequence);
         }
      break;



      case 143:
      case 144:
         status = sati_request_sense_translate_response(
                     sequence, scsi_io, ata_io
                  );
         if(status == SATI_COMPLETE)
         {
            status = sati_check_data_io(sequence);
         }
      break;



      case 128:
         status = sati_write_long_translate_response(
                     sequence, scsi_io, ata_io
                  );
         if(status == SATI_COMPLETE)
         {
            status = sati_check_data_io(sequence);
         }
      break;



      case 170:
      case 171:
      case 173:
      case 172:
         status = sati_log_sense_translate_response(
                     sequence, scsi_io, ata_io
                  );
         if(status == SATI_COMPLETE)
         {
            status = sati_check_data_io(sequence);
         }
      break;



      case 139:
         status = sati_unmap_translate_response(
                     sequence, scsi_io, ata_io
                  );
      break;



      case 182:
      case 181:
         status = sati_passthrough_translate_response(
                     sequence, scsi_io, ata_io
                  );
      break;


      default:
         status = SATI_FAILURE_INVALID_SEQUENCE_TYPE;
      break;
   }

   return status;
}
