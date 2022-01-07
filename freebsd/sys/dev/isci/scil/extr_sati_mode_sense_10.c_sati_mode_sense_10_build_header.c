
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
typedef int U16 ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {int capabilities; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int ATA_IDENTIFY_DEVICE_DATA_T ;


 int SATI_DEVICE_CAP_DMA_FUA_ENABLE ;
 int SCSI_MODE_HEADER_MEDIUM_TYPE_SBC ;
 int SCSI_MODE_SENSE_10_HEADER_LENGTH ;
 int SCSI_MODE_SENSE_DBD_ENABLE ;
 int SCSI_MODE_SENSE_HEADER_FUA_ENABLE ;
 int SCSI_MODE_SENSE_LLBAA_ENABLE ;
 int SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH ;
 int SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH ;
 int* sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int*,int) ;
 int sati_set_data_byte (TYPE_2__*,void*,int,int) ;

__attribute__((used)) static
U32 sati_mode_sense_10_build_header(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   U16 mode_data_length
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);





   mode_data_length -= 2;
   sati_set_data_byte(sequence, scsi_io, 0, (U8)(mode_data_length >> 8) & 0xFF);
   sati_set_data_byte(sequence, scsi_io, 1, (U8)(mode_data_length & 0xFF));


   sati_set_data_byte(sequence, scsi_io, 2, SCSI_MODE_HEADER_MEDIUM_TYPE_SBC);


   if (sequence->device->capabilities & SATI_DEVICE_CAP_DMA_FUA_ENABLE)
      sati_set_data_byte(sequence,scsi_io,3,SCSI_MODE_SENSE_HEADER_FUA_ENABLE);
   else
      sati_set_data_byte(sequence, scsi_io, 3, 0);



   sati_set_data_byte(sequence, scsi_io, 4, 0);
   sati_set_data_byte(sequence, scsi_io, 5, 0);



   sati_set_data_byte(sequence, scsi_io, 6, 0);


   if (sati_get_cdb_byte(cdb, 1) & SCSI_MODE_SENSE_DBD_ENABLE)
      sati_set_data_byte(sequence, scsi_io, 7, 0);
   else
   {


      if (sati_get_cdb_byte(cdb, 1) & SCSI_MODE_SENSE_LLBAA_ENABLE)
      {
         sati_set_data_byte(sequence, scsi_io, 4, 1);
         sati_set_data_byte(
            sequence, scsi_io, 7, SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH
         );
      }
      else
      {
         sati_set_data_byte(
            sequence, scsi_io, 7, SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH
         );
      }
   }

   return SCSI_MODE_SENSE_10_HEADER_LENGTH;
}
