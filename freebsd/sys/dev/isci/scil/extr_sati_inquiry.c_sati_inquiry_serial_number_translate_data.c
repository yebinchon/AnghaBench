
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int ATA_IDENTIFY_DEVICE_GET_OFFSET (int ) ;
 int ATA_IDENTIFY_SERIAL_NUMBER_LEN ;
 int SCSI_INQUIRY_UNIT_SERIAL_NUM_PAGE ;
 int TRUE ;
 int sati_ata_identify_device_copy_data (int *,void*,int,void*,int ,int,int ) ;
 int sati_set_data_byte (int *,void*,int,int) ;
 int serial_number ;

void sati_inquiry_serial_number_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * ata_input_data,
   void * scsi_io
)
{


   sati_set_data_byte(sequence, scsi_io, 0, 0x00);

   sati_set_data_byte(sequence, scsi_io, 1, SCSI_INQUIRY_UNIT_SERIAL_NUM_PAGE);
   sati_set_data_byte(sequence, scsi_io, 2, 0x00);
   sati_set_data_byte(sequence, scsi_io, 3, ATA_IDENTIFY_SERIAL_NUMBER_LEN);

   sati_ata_identify_device_copy_data(
      sequence,
      scsi_io,
      4,
      ata_input_data,
      ATA_IDENTIFY_DEVICE_GET_OFFSET(serial_number),
      ATA_IDENTIFY_SERIAL_NUMBER_LEN,
      TRUE
   );
}
