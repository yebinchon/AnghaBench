
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_2__ {scalar_t__ lba_39_32; int lba_31_24; int lba_23_16; int lba_15_8; int lba_7_0; } ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef TYPE_1__ ATA_NCQ_COMMAND_ERROR_LOG_T ;


 int FALSE ;
 int TRUE ;
 int sati_scsi_common_fixed_sense_construct (int*,int ,int,int,int) ;
 int sati_scsi_get_sense_data_buffer (int *,void*,int,int**,int *) ;
 int sati_set_sense_data_byte (int*,int ,int,int) ;

__attribute__((used)) static
void sati_scsi_read_ncq_error_fixed_sense_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_input_data,
   U8 scsi_status,
   U8 response_code,
   U8 sense_key,
   U8 additional_sense_code,
   U8 additional_sense_code_qualifier
)
{
   U8 * sense_data;
   U32 sense_len;
   U8 valid = TRUE;

   ATA_NCQ_COMMAND_ERROR_LOG_T * ncq_log = (ATA_NCQ_COMMAND_ERROR_LOG_T *) ata_input_data;

   sati_scsi_get_sense_data_buffer(sequence, scsi_io, scsi_status, &sense_data, &sense_len);

   if(ncq_log->lba_39_32 > 0)
   {
      valid = FALSE;
   }

   sati_set_sense_data_byte(
      sense_data,
      sense_len,
      0,
      (valid << 7) | response_code
   );

   sati_set_sense_data_byte(sense_data, sense_len, 3, ncq_log->lba_31_24);
   sati_set_sense_data_byte(sense_data, sense_len, 4, ncq_log->lba_23_16);
   sati_set_sense_data_byte(sense_data, sense_len, 5, ncq_log->lba_15_8);
   sati_set_sense_data_byte(sense_data, sense_len, 6, ncq_log->lba_7_0);

   sati_scsi_common_fixed_sense_construct(
      sense_data,
      sense_len,
      sense_key,
      additional_sense_code,
      additional_sense_code_qualifier
   );
}
