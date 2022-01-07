
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int SCSI_FIXED_SENSE_DATA_VALID_BIT ;
 int sati_scsi_get_sense_data_buffer (int *,void*,int,int**,int*) ;
 int sati_set_sense_data_byte (int*,int,int,int) ;

void sati_scsi_fixed_sense_data_construct(
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
      response_code | SCSI_FIXED_SENSE_DATA_VALID_BIT
    );

    sati_set_sense_data_byte(sense_data, sense_len, 1, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 2, sense_key);
    sati_set_sense_data_byte(sense_data, sense_len, 3, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 4, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 5, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 6, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 7, (sense_len < 18 ? sense_len - 1 : 17) - 7);
    sati_set_sense_data_byte(sense_data, sense_len, 8, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 9, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 10, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 11, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 12, additional_sense_code);
    sati_set_sense_data_byte(sense_data, sense_len, 13, additional_sense_code_qualifier);
    sati_set_sense_data_byte(sense_data, sense_len, 14, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 15, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 16, 0);
    sati_set_sense_data_byte(sense_data, sense_len, 17, 0);
}
