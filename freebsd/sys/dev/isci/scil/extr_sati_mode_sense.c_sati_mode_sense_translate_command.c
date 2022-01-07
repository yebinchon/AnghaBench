
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef scalar_t__ SATI_STATUS ;


 scalar_t__ SATI_SUCCESS ;
 int sati_ata_identify_device_construct (void*,int *) ;
 scalar_t__ sati_mode_sense_is_page_code_supported (int *,void*,int ) ;
 scalar_t__ sati_mode_sense_is_page_control_supported (int *,void*) ;

SATI_STATUS sati_mode_sense_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io,
   U8 cdb_length
)
{
   SATI_STATUS status;




   status = sati_mode_sense_is_page_control_supported(sequence, scsi_io);
   if (status != SATI_SUCCESS)
      return status;




   status = sati_mode_sense_is_page_code_supported(sequence,scsi_io,cdb_length);
   if (status != SATI_SUCCESS)
      return status;

   sati_ata_identify_device_construct(ata_io, sequence);

   return SATI_SUCCESS;
}
