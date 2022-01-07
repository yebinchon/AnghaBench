
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_2__ {int general_config_bits; } ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef TYPE_1__ ATA_IDENTIFY_DEVICE_DATA_T ;


 int ATA_IDENTIFY_DEVICE_GET_OFFSET (int ) ;
 int ATA_IDENTIFY_REMOVABLE_MEDIA_ENABLE ;
 int TRUE ;
 int model_number ;
 int sati_ata_identify_device_copy_data (int *,void*,int,void*,int ,int,int ) ;
 int sati_inquiry_construct_product_revision (int *,void*,void*) ;
 int sati_set_data_byte (int *,void*,int,int) ;

void sati_inquiry_standard_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * ata_input_data,
   void * scsi_io
)
{
   ATA_IDENTIFY_DEVICE_DATA_T * identify = (ATA_IDENTIFY_DEVICE_DATA_T*)
                                           ata_input_data;
   U32 index;


   sati_set_data_byte(sequence, scsi_io, 0, 0x00);



   if (identify->general_config_bits & ATA_IDENTIFY_REMOVABLE_MEDIA_ENABLE)
      sati_set_data_byte(sequence, scsi_io, 1, 0x80);
   else
      sati_set_data_byte(sequence, scsi_io, 1, 0x00);

   sati_set_data_byte(sequence, scsi_io, 2, 0x05);
   sati_set_data_byte(sequence, scsi_io, 3, 0x02);

   sati_set_data_byte(sequence, scsi_io, 4, 62);


   sati_set_data_byte(sequence, scsi_io, 5, 0x00);
   sati_set_data_byte(sequence, scsi_io, 6, 0x00);
   sati_set_data_byte(sequence, scsi_io, 7, 0x02);


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


   for (index = 36; index < 58; index++)
      sati_set_data_byte(sequence, scsi_io, index, 0);




   sati_set_data_byte(sequence, scsi_io, 58, 0);
   sati_set_data_byte(sequence, scsi_io, 59, 0x80);


   sati_set_data_byte(sequence, scsi_io, 60, 0x0C);
   sati_set_data_byte(sequence, scsi_io, 61, 0x20);


   sati_set_data_byte(sequence, scsi_io, 62, 0x04);
   sati_set_data_byte(sequence, scsi_io, 63, 0x60);


   sati_set_data_byte(sequence, scsi_io, 64, 0x04);
   sati_set_data_byte(sequence, scsi_io, 65, 0xC0);


   sati_set_data_byte(sequence, scsi_io, 66, 0x16);
   sati_set_data_byte(sequence, scsi_io, 67, 0x23);
}
