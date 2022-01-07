
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int SCSI_FIXED_CURRENT_RESPONSE_CODE ;
 int SCSI_FIXED_SENSE_DATA_VALID_BIT ;
 int sati_set_data_byte (int *,void*,int,int) ;

void sati_request_sense_data_response_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   U8 sense_key,
   U8 additional_sense_code,
   U8 additional_sense_code_qualifier
)
{
   sati_set_data_byte(
      sequence,
      scsi_io,
      0,
      SCSI_FIXED_CURRENT_RESPONSE_CODE | SCSI_FIXED_SENSE_DATA_VALID_BIT
   );

   sati_set_data_byte(sequence, scsi_io, 1, 0);
   sati_set_data_byte(sequence, scsi_io, 2, sense_key);
   sati_set_data_byte(sequence, scsi_io, 3, 0);
   sati_set_data_byte(sequence, scsi_io, 4, 0);
   sati_set_data_byte(sequence, scsi_io, 5, 0);
   sati_set_data_byte(sequence, scsi_io, 6, 0);
   sati_set_data_byte(sequence, scsi_io, 7, 0);
   sati_set_data_byte(sequence, scsi_io, 8, 0);
   sati_set_data_byte(sequence, scsi_io, 9, 0);
   sati_set_data_byte(sequence, scsi_io, 10, 0);
   sati_set_data_byte(sequence, scsi_io, 11, 0);
   sati_set_data_byte(sequence, scsi_io, 12, additional_sense_code);
   sati_set_data_byte(sequence, scsi_io, 13, additional_sense_code_qualifier);
   sati_set_data_byte(sequence, scsi_io, 14, 0);
   sati_set_data_byte(sequence, scsi_io, 15, 0);
   sati_set_data_byte(sequence, scsi_io, 16, 0);
   sati_set_data_byte(sequence, scsi_io, 17, 0);
}
