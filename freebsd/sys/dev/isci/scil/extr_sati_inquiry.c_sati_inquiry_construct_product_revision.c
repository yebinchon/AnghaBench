
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* firmware_revision; } ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef TYPE_1__ ATA_IDENTIFY_DEVICE_DATA_T ;


 scalar_t__ ATA_IDENTIFY_DEVICE_GET_OFFSET (int ) ;
 int TRUE ;
 int firmware_revision ;
 int sati_ata_identify_device_copy_data (int *,void*,int,void*,scalar_t__,int,int ) ;

__attribute__((used)) static
void sati_inquiry_construct_product_revision(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * ata_input_data,
   void * scsi_io
)
{
   ATA_IDENTIFY_DEVICE_DATA_T * identify = (ATA_IDENTIFY_DEVICE_DATA_T*)
      ata_input_data;





   if ( (identify->firmware_revision[4] == 0x20)
       && (identify->firmware_revision[5] == 0x20)
       && (identify->firmware_revision[6] == 0x20)
       && (identify->firmware_revision[7] == 0x20) )
   {
      sati_ata_identify_device_copy_data(
         sequence,
         scsi_io,
         32,
         ata_input_data,
         ATA_IDENTIFY_DEVICE_GET_OFFSET(firmware_revision),
         4,
         TRUE
       );
   }
   else
   {


      sati_ata_identify_device_copy_data(
         sequence,
         scsi_io,
         32,
         ata_input_data,
         ATA_IDENTIFY_DEVICE_GET_OFFSET(firmware_revision)+4,
         4,
         TRUE
      );
   }
}
