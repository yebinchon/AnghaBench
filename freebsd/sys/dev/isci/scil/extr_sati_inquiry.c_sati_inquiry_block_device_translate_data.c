
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_2__ {int device_nominal_form_factor; } ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef TYPE_1__ ATA_IDENTIFY_DEVICE_DATA_T ;


 int ATA_IDENTIFY_DEVICE_GET_OFFSET (int ) ;
 int FALSE ;
 int SCSI_INQUIRY_BLOCK_DEVICE_LENGTH ;
 int SCSI_INQUIRY_BLOCK_DEVICE_PAGE ;
 int nominal_media_rotation_rate ;
 int sati_ata_identify_device_copy_data (int *,void*,int,void*,int ,int,int ) ;
 int sati_set_data_byte (int *,void*,int,int) ;

void sati_inquiry_block_device_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * ata_input_data,
   void * scsi_io
)
{
   ATA_IDENTIFY_DEVICE_DATA_T * identify = (ATA_IDENTIFY_DEVICE_DATA_T*)
      ata_input_data;

   U32 offset;



   sati_set_data_byte(sequence, scsi_io, 0, 0x00);

   sati_set_data_byte(sequence, scsi_io, 1, SCSI_INQUIRY_BLOCK_DEVICE_PAGE);


   sati_set_data_byte(sequence, scsi_io, 2, 0x00);
   sati_set_data_byte(sequence, scsi_io, 3, SCSI_INQUIRY_BLOCK_DEVICE_LENGTH);

   sati_ata_identify_device_copy_data(
      sequence,
      scsi_io,
      4,
      ata_input_data,
      ATA_IDENTIFY_DEVICE_GET_OFFSET(nominal_media_rotation_rate),
      2,
      FALSE
    );

    sati_set_data_byte(sequence, scsi_io, 6, 0x00);

    sati_set_data_byte(
       sequence,
       scsi_io,
       7,
       (identify->device_nominal_form_factor & 0x0F)
    );


    for(offset = 8; offset < 64; offset++)
    {
       sati_set_data_byte(sequence, scsi_io, offset, 0x00);
    }
}
