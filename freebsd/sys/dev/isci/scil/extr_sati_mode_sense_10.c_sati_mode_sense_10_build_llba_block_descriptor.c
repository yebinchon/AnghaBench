
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef int ATA_IDENTIFY_DEVICE_DATA_T ;


 int SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH ;
 int sati_ata_identify_device_get_sector_info (int *,int*,int*,int*) ;
 int sati_set_data_byte (int *,void*,int,int ) ;

__attribute__((used)) static
U32 sati_mode_sense_10_build_llba_block_descriptor(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   U32 offset
)
{
   U32 lba_low = 0;
   U32 lba_high = 0;
   U32 sector_size = 0;



   sati_ata_identify_device_get_sector_info(
      identify, &lba_low, &lba_high, &sector_size
   );


   sati_set_data_byte(sequence, scsi_io, offset, (U8)((lba_high>>24) & 0xFF));
   sati_set_data_byte(sequence, scsi_io, offset+1, (U8)((lba_high>>16) & 0xFF));
   sati_set_data_byte(sequence, scsi_io, offset+2, (U8)((lba_high>>8) & 0xFF));
   sati_set_data_byte(sequence, scsi_io, offset+3, (U8)(lba_high & 0xFF));
   sati_set_data_byte(sequence, scsi_io, offset+4, (U8)((lba_low>>24) & 0xFF));
   sati_set_data_byte(sequence, scsi_io, offset+5, (U8)((lba_low>>16) & 0xFF));
   sati_set_data_byte(sequence, scsi_io, offset+6, (U8)((lba_low>>8) & 0xFF));
   sati_set_data_byte(sequence, scsi_io, offset+7, (U8)(lba_low & 0xFF));


   sati_set_data_byte(sequence, scsi_io, offset+8, 0);
   sati_set_data_byte(sequence, scsi_io, offset+9, 0);
   sati_set_data_byte(sequence, scsi_io, offset+10, 0);
   sati_set_data_byte(sequence, scsi_io, offset+11, 0);


   sati_set_data_byte(sequence,scsi_io, offset+12, (U8)((sector_size>>24) & 0xFF));
   sati_set_data_byte(sequence,scsi_io, offset+13, (U8)((sector_size>>16) & 0xFF));
   sati_set_data_byte(sequence,scsi_io, offset+14, (U8)((sector_size>>8) & 0xFF));
   sati_set_data_byte(sequence,scsi_io, offset+15, (U8)(sector_size & 0xFF));

   return SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH;
}
