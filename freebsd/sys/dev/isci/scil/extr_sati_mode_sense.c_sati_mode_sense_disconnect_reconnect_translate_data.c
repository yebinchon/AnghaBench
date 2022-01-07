
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef int ATA_IDENTIFY_DEVICE_DATA_T ;


 int SCSI_MODE_PAGE_DISCONNECT_RECONNECT ;
 int SCSI_MODE_SENSE_PC_SHIFT ;
 int* sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int*,int) ;
 int sati_mode_sense_copy_initial_data (int *,void*,int ,int,int ) ;

U32 sati_mode_sense_disconnect_reconnect_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   U32 offset
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U8 page_control = sati_get_cdb_byte(cdb, 2) >> SCSI_MODE_SENSE_PC_SHIFT;
   U32 page_length;

   page_length = sati_mode_sense_copy_initial_data(
                    sequence,
                    scsi_io,
                    offset,
                    page_control,
                    SCSI_MODE_PAGE_DISCONNECT_RECONNECT
                 );




   return page_length;
}
