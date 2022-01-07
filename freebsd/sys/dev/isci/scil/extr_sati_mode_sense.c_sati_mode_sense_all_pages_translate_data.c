
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef int ATA_IDENTIFY_DEVICE_DATA_T ;


 scalar_t__ sati_mode_sense_caching_translate_data (int *,void*,int *,int ) ;
 scalar_t__ sati_mode_sense_control_translate_data (int *,void*,int *,int ) ;
 scalar_t__ sati_mode_sense_disconnect_reconnect_translate_data (int *,void*,int *,int ) ;
 scalar_t__ sati_mode_sense_informational_excp_control_translate_data (int *,void*,int *,int ) ;
 scalar_t__ sati_mode_sense_read_write_error_translate_data (int *,void*,int *,int ) ;

U32 sati_mode_sense_all_pages_translate_data(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   ATA_IDENTIFY_DEVICE_DATA_T * identify,
   U32 offset
)
{
   offset += sati_mode_sense_read_write_error_translate_data(
                sequence, scsi_io, identify, offset
             );

   offset += sati_mode_sense_disconnect_reconnect_translate_data(
                sequence, scsi_io, identify, offset
             );

   offset += sati_mode_sense_caching_translate_data(
                sequence, scsi_io, identify, offset
             );

   offset += sati_mode_sense_control_translate_data(
                sequence, scsi_io, identify, offset
             );

   offset += sati_mode_sense_informational_excp_control_translate_data(
                sequence, scsi_io, identify, offset
             );

   return offset;
}
