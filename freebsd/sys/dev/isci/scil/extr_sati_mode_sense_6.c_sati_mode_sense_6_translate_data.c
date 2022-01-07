
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef int ATA_IDENTIFY_DEVICE_DATA_T ;


 int SCSI_MODE_SENSE_DBD_ENABLE ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_mode_sense_6_build_header (int *,void*,int *,int ) ;
 scalar_t__ sati_mode_sense_build_std_block_descriptor (int *,void*,int *,int ) ;

__attribute__((used)) static
U32 sati_mode_sense_6_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   void * scsi_io,
   U8 transfer_length
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U32 offset;

   offset = sati_mode_sense_6_build_header(
               sequence, scsi_io, identify, transfer_length
            );



   if ((sati_get_cdb_byte(cdb, 1) & SCSI_MODE_SENSE_DBD_ENABLE) == 0)
      offset += sati_mode_sense_build_std_block_descriptor(
                   sequence, scsi_io, identify, offset
                );

   return offset;
}
