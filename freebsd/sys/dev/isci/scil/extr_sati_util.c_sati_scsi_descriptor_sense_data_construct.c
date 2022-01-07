
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int sati_scsi_common_descriptors_construct (void*,scalar_t__*,int ,int *) ;
 scalar_t__ sati_scsi_get_descriptor_sense_data_length (int *,void*) ;
 int sati_scsi_get_sense_data_buffer (int *,void*,scalar_t__,scalar_t__**,int *) ;
 int sati_set_sense_data_byte (scalar_t__*,int ,int,scalar_t__) ;

void sati_scsi_descriptor_sense_data_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   U8 scsi_status,
   U8 response_code,
   U8 sense_key,
   U8 additional_sense_code,
   U8 additional_sense_code_qualifier
)
{
   U8 * sense_data;
   U32 sense_len;

   sati_scsi_get_sense_data_buffer(sequence, scsi_io, scsi_status, &sense_data, &sense_len);

   sati_set_sense_data_byte(
      sense_data,
      sense_len,
      0,
      response_code
   );

   sati_set_sense_data_byte(sense_data, sense_len, 1, sense_key);
   sati_set_sense_data_byte(sense_data, sense_len, 2, additional_sense_code);
   sati_set_sense_data_byte(sense_data, sense_len, 3, additional_sense_code_qualifier);
   sati_set_sense_data_byte(sense_data, sense_len, 4, 0);
   sati_set_sense_data_byte(sense_data, sense_len, 5, 0);
   sati_set_sense_data_byte(sense_data, sense_len, 6, 0);

   sati_scsi_common_descriptors_construct(scsi_io, sense_data + 8, sense_len, ((void*)0));

   sati_set_sense_data_byte(sense_data, sense_len, 7, sati_scsi_get_descriptor_sense_data_length(sequence, scsi_io) - 8);
}
