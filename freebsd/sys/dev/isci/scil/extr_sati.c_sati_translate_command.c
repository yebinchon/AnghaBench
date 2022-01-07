
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_43__ {scalar_t__ state; } ;
struct TYPE_41__ {scalar_t__ scratch; } ;
struct TYPE_42__ {scalar_t__ state; void* is_sense_response_set; scalar_t__ number_data_bytes_set; TYPE_1__ command_specific_data; TYPE_3__* device; void* is_translate_response_required; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef scalar_t__ SATI_STATUS ;
typedef TYPE_3__ SATI_DEVICE_T ;


 void* FALSE ;
 int SATA_FIS_TYPE_REGH2D ;
 scalar_t__ SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED ;
 scalar_t__ SATI_FAILURE ;
 scalar_t__ SATI_FAILURE_CHECK_RESPONSE_DATA ;
 scalar_t__ SATI_SEQUENCE_STATE_INITIAL ;
 int SCSI_ASCQ_INTERNAL_TARGET_FAILURE ;
 int SCSI_ASCQ_INVALID_COMMAND_OPERATION_CODE ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INTERNAL_TARGET_FAILURE ;
 int SCSI_ASC_INVALID_COMMAND_OPERATION_CODE ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_LOGICAL_UNIT_NOT_SUPPORTED ;


 int SCSI_CONTROL_BYTE_NACA_BIT_ENABLE ;
 int SCSI_SENSE_HARDWARE_ERROR ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;

 int SCSI_SERVICE_ACTION_IN_CODES_READ_CAPACITY_16 ;
 int SCSI_SERVICE_ACTION_MASK ;

 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_cb_get_cdb_length (void*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 scalar_t__ sati_cb_get_lun (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 scalar_t__ sati_inquiry_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_log_sense_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_mode_select_10_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_mode_select_6_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_mode_sense_10_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_mode_sense_6_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_passthrough_12_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_passthrough_16_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_read_10_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_read_12_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_read_16_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_read_6_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_read_buffer_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_read_capacity_10_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_read_capacity_16_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_reassign_blocks_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_report_luns_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_request_sense_translate_command (TYPE_2__*,void*,void*) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;
 int sati_set_sata_command_flag (int *) ;
 int sati_set_sata_fis_type (int *,int ) ;
 scalar_t__ sati_start_stop_unit_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_synchronize_cache_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_test_unit_ready_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_unmap_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_verify_10_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_verify_12_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_verify_16_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_write_10_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_write_12_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_write_16_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_write_6_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_write_and_verify_10_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_write_and_verify_12_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_write_and_verify_16_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_write_buffer_translate_command (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_write_long_translate_command (TYPE_2__*,void*,void*) ;

SATI_STATUS sati_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   SATI_DEVICE_T * sati_device,
   void * scsi_io,
   void * ata_io
)
{
   SATI_STATUS status = SATI_FAILURE;
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);


   sequence->is_sense_response_set = FALSE;

   sequence->is_translate_response_required = FALSE;

   sequence->device = sati_device;




   if (sati_cb_get_lun(scsi_io) != 0)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_LOGICAL_UNIT_NOT_SUPPORTED,
         0
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }





   if ( (sati_get_cdb_byte(cdb, sati_cb_get_cdb_length(scsi_io) - 1)
         & SCSI_CONTROL_BYTE_NACA_BIT_ENABLE))
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }





   if (sati_device->state == SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_HARDWARE_ERROR,
         SCSI_ASC_INTERNAL_TARGET_FAILURE,
         SCSI_ASCQ_INTERNAL_TARGET_FAILURE
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   if(sequence->state == SATI_SEQUENCE_STATE_INITIAL)
   {
      sequence->command_specific_data.scratch = 0;
      sequence->number_data_bytes_set = 0;
   }
   switch (sati_get_cdb_byte(cdb, 0))
   {

      case 148:
         status = sati_report_luns_translate_command(
                     sequence, scsi_io, ata_io
                  );
      break;



      case 163:
         status = sati_inquiry_translate_command(
                     sequence, scsi_io, ata_io
                  );
      break;



      case 158:
         status = sati_mode_sense_6_translate_command(
                     sequence, scsi_io, ata_io
                  );
      break;

      case 159:
         status = sati_mode_sense_10_translate_command(
                     sequence, scsi_io, ata_io
                  );
      break;



      case 160:
         status = sati_mode_select_6_translate_command(
                     sequence, scsi_io, ata_io
                  );
      break;

      case 161:
         status = sati_mode_select_10_translate_command(
                     sequence, scsi_io, ata_io
                  );
      break;



      case 142:
         status = sati_test_unit_ready_translate_command(
                     sequence, scsi_io, ata_io
                  );
      break;



      case 150:
         status = sati_read_capacity_10_translate_command(
                     sequence, scsi_io, ata_io
                  );
      break;

      case 146:
         if ( (sati_get_cdb_byte(cdb, 1) & SCSI_SERVICE_ACTION_MASK)
              == SCSI_SERVICE_ACTION_IN_CODES_READ_CAPACITY_16)
            status = sati_read_capacity_16_translate_command(
                        sequence, scsi_io, ata_io
                     );
         else
            status = SATI_FAILURE_CHECK_RESPONSE_DATA;
      break;



      case 147:
         status = sati_request_sense_translate_command(
                     sequence, scsi_io, ata_io
                  );
      break;


      case 152:
         status = sati_read_6_translate_command(sequence, scsi_io, ata_io);
      break;

      case 155:
         status = sati_read_10_translate_command(sequence, scsi_io, ata_io);
      break;

      case 154:
         status = sati_read_12_translate_command(sequence, scsi_io, ata_io);
      break;

      case 153:
         status = sati_read_16_translate_command(sequence, scsi_io, ata_io);
      break;

      case 134:
         status = sati_write_6_translate_command(sequence, scsi_io, ata_io);
      break;

      case 137:
         status = sati_write_10_translate_command(sequence, scsi_io, ata_io);
      break;

      case 136:
         status = sati_write_12_translate_command(sequence, scsi_io, ata_io);
      break;

      case 135:
         status = sati_write_16_translate_command(sequence, scsi_io, ata_io);
      break;


      case 140:
         status = sati_verify_10_translate_command(sequence, scsi_io, ata_io);
      break;

      case 139:
         status = sati_verify_12_translate_command(sequence, scsi_io, ata_io);
      break;

      case 138:
         status = sati_verify_16_translate_command(sequence, scsi_io, ata_io);
      break;






      case 133:
         status = sati_write_and_verify_10_translate_command(sequence, scsi_io, ata_io);
      break;

      case 132:
         status = sati_write_and_verify_12_translate_command(sequence, scsi_io, ata_io);
      break;

      case 131:
         status = sati_write_and_verify_16_translate_command(sequence, scsi_io, ata_io);
      break;





      case 149:
         status = sati_reassign_blocks_translate_command(sequence, scsi_io, ata_io);
      break;



      case 144:
      case 143:
         status = sati_synchronize_cache_translate_command(sequence, scsi_io, ata_io);
      break;



      case 145:
         status = sati_start_stop_unit_translate_command(
                     sequence, scsi_io, ata_io
                  );
      break;



      case 129:
      case 128:
         status = sati_write_long_translate_command(sequence, scsi_io, ata_io);
      break;



      case 162:
         status = sati_log_sense_translate_command(sequence, scsi_io, ata_io);
      break;


      case 157:
      case 156:

         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_INVALID_COMMAND_OPERATION_CODE,
            SCSI_ASCQ_INVALID_COMMAND_OPERATION_CODE
         );

         return SATI_FAILURE_CHECK_RESPONSE_DATA;
      break;


      case 141:
         status = sati_unmap_translate_command(sequence, scsi_io, ata_io);
      break;



      case 165:
          status = sati_passthrough_12_translate_command(sequence, scsi_io, ata_io);
      break;

      case 164:
          status = sati_passthrough_16_translate_command(sequence, scsi_io, ata_io);
      break;




      case 151:
         status = sati_read_buffer_translate_command(sequence, scsi_io, ata_io);
      break;



      case 130:
         status = sati_write_buffer_translate_command(sequence, scsi_io, ata_io);
      break;

      default:
         status = SATI_FAILURE_CHECK_RESPONSE_DATA;
      break;
   }

   if( (status == SATI_FAILURE_CHECK_RESPONSE_DATA) &&
       !(sequence->is_sense_response_set) )
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
   }
   return status;
}
