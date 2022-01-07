
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U16 ;


 scalar_t__ SCSI_MODE_SENSE_10_HEADER_LENGTH ;
 scalar_t__ SCSI_MODE_SENSE_6_HEADER_LENGTH ;
 int SCSI_MODE_SENSE_DBD_ENABLE ;
 int SCSI_MODE_SENSE_LLBAA_ENABLE ;
 scalar_t__ SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH ;
 scalar_t__ SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH ;
 int* sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int*,int) ;

U16 sati_mode_sense_calculate_page_header(
   void * scsi_io,
   U8 cdb_size
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U16 page_length = 0;


   if (cdb_size == 6)
      page_length += SCSI_MODE_SENSE_6_HEADER_LENGTH;
   else
      page_length += SCSI_MODE_SENSE_10_HEADER_LENGTH;


   if ((sati_get_cdb_byte(cdb, 1) & SCSI_MODE_SENSE_DBD_ENABLE) == 0)
   {

      if ( (cdb_size == 10)
         && (sati_get_cdb_byte(cdb, 1) & SCSI_MODE_SENSE_LLBAA_ENABLE) )
         page_length += SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH;
      else
         page_length += SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH;
   }

   return page_length;
}
