
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;
typedef int ATA_IDENTIFY_DEVICE_DATA_T ;


 int ATA_IDENTIFY_DEVICE_GET_OFFSET (int ) ;
 int FALSE ;
 int SATI_SEQUENCE_INCOMPLETE ;
 int SATI_SEQUENCE_STATE_INCOMPLETE ;
 int SCSI_INQUIRY_ATA_INFORMATION_PAGE ;
 int TRUE ;
 int model_number ;
 int sati_ata_identify_device_copy_data (TYPE_1__*,void*,int,void*,int ,int,int ) ;
 int sati_inquiry_construct_product_revision (TYPE_1__*,void*,void*) ;
 int sati_set_data_byte (TYPE_1__*,void*,int,int) ;

SATI_STATUS sati_inquiry_ata_information_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * ata_input_data,
   void * scsi_io
)
{
   sati_set_data_byte(sequence, scsi_io, 0, 0x00);
   sati_set_data_byte(sequence, scsi_io, 1, SCSI_INQUIRY_ATA_INFORMATION_PAGE);
   sati_set_data_byte(sequence, scsi_io, 2, 0x02);
   sati_set_data_byte(sequence, scsi_io, 3, 0x38);


   sati_set_data_byte(sequence, scsi_io, 4, 0x00);
   sati_set_data_byte(sequence, scsi_io, 5, 0x00);
   sati_set_data_byte(sequence, scsi_io, 6, 0x00);
   sati_set_data_byte(sequence, scsi_io, 7, 0x00);


   sati_set_data_byte(sequence, scsi_io, 8, 0x41);
   sati_set_data_byte(sequence, scsi_io, 9, 0x54);
   sati_set_data_byte(sequence, scsi_io, 10, 0x41);
   sati_set_data_byte(sequence, scsi_io, 11, 0x20);
   sati_set_data_byte(sequence, scsi_io, 12, 0x20);
   sati_set_data_byte(sequence, scsi_io, 13, 0x20);
   sati_set_data_byte(sequence, scsi_io, 14, 0x20);
   sati_set_data_byte(sequence, scsi_io, 15, 0x20);


   sati_ata_identify_device_copy_data(
      sequence,
      scsi_io,
      16,
      ata_input_data,
      ATA_IDENTIFY_DEVICE_GET_OFFSET(model_number),
      16,
      TRUE
   );


   sati_inquiry_construct_product_revision(
      sequence,
      ata_input_data,
      scsi_io
   );




   sati_set_data_byte(sequence, scsi_io, 56, 0xEC);


   sati_set_data_byte(sequence, scsi_io, 57, 0x00);
   sati_set_data_byte(sequence, scsi_io, 58, 0x00);
   sati_set_data_byte(sequence, scsi_io, 59, 0x00);


   sati_ata_identify_device_copy_data(
      sequence,
      scsi_io,
      60,
      ata_input_data,
      0,
      sizeof(ATA_IDENTIFY_DEVICE_DATA_T),
      FALSE
   );


   sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;

   return SATI_SEQUENCE_INCOMPLETE;
}
