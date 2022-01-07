
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {int type; int device; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int ATA_IDENTIFY_DEVICE_DATA_T ;
 int sati_device_update_capabilities (int ,int *) ;
 int sati_inquiry_ata_information_translate_data (TYPE_1__*,void*,void*) ;
 int sati_inquiry_block_device_translate_data (TYPE_1__*,void*,void*) ;
 int sati_inquiry_device_id_translate_data (TYPE_1__*,void*,void*) ;
 int sati_inquiry_serial_number_translate_data (TYPE_1__*,void*,void*) ;
 int sati_inquiry_standard_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_10_all_pages_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_10_caching_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_10_control_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_10_disconnect_reconnect_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_10_informational_excp_control_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_10_power_condition_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_10_read_write_error_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_6_all_pages_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_6_caching_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_6_control_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_6_disconnect_reconnect_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_6_informational_excp_control_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_6_power_condition_translate_data (TYPE_1__*,void*,void*) ;
 int sati_mode_sense_6_read_write_error_translate_data (TYPE_1__*,void*,void*) ;
 int sati_read_capacity_10_translate_data (TYPE_1__*,void*,void*) ;
 int sati_read_capacity_16_translate_data (TYPE_1__*,void*,void*) ;

__attribute__((used)) static
void sati_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * ata_input_data,
   void * scsi_io
)
{

   sati_device_update_capabilities(
      sequence->device, (ATA_IDENTIFY_DEVICE_DATA_T*) ata_input_data
   );


   switch (sequence->type)
   {

      case 144:
         sati_inquiry_standard_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 145:
         sati_inquiry_serial_number_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 146:
         sati_inquiry_device_id_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 147:
         sati_inquiry_block_device_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 148:
         sati_inquiry_ata_information_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;




      case 129:
         sati_read_capacity_10_translate_data(sequence, ata_input_data, scsi_io);
      break;

      case 128:
         sati_read_capacity_16_translate_data(sequence, ata_input_data, scsi_io);
      break;



      case 135:
         sati_mode_sense_6_caching_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 132:
         sati_mode_sense_6_informational_excp_control_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 130:
         sati_mode_sense_6_read_write_error_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 133:
         sati_mode_sense_6_disconnect_reconnect_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 134:
         sati_mode_sense_6_control_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 136:
         sati_mode_sense_6_all_pages_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 131:
         sati_mode_sense_6_power_condition_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 138:
         sati_mode_sense_10_power_condition_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 142:
         sati_mode_sense_10_caching_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 139:
         sati_mode_sense_10_informational_excp_control_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 137:
         sati_mode_sense_10_read_write_error_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 140:
         sati_mode_sense_10_disconnect_reconnect_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 141:
         sati_mode_sense_10_control_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;

      case 143:
         sati_mode_sense_10_all_pages_translate_data(
            sequence, ata_input_data, scsi_io
         );
      break;


      default:
      break;
   }
}
