
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_2__ {int lba_7_0; int lba_15_8; int lba_23_16; int lba_31_24; int lba_39_32; int lba_47_40; } ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef TYPE_1__ ATA_NCQ_COMMAND_ERROR_LOG_T ;


 int sati_scsi_common_descriptor_sense_construct (int *,void*,int *,int ,int ,int ,int ,int *) ;
 int sati_scsi_get_sense_data_buffer (int *,void*,int ,int **,int *) ;
 int sati_set_sense_data_byte (int *,int ,int ,int ) ;

__attribute__((used)) static
void sati_scsi_read_ncq_error_descriptor_sense_construct(
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

   U8 information_buff[8] = {0};

   ATA_NCQ_COMMAND_ERROR_LOG_T * ncq_log = (ATA_NCQ_COMMAND_ERROR_LOG_T *) ata_input_data;

   sati_scsi_get_sense_data_buffer(sequence, scsi_io, scsi_status, &sense_data, &sense_len);

   sati_set_sense_data_byte(
      sense_data,
      sense_len,
      0,
      response_code
   );

   information_buff[2] = ncq_log->lba_47_40;
   information_buff[3] = ncq_log->lba_39_32;
   information_buff[4] = ncq_log->lba_31_24;
   information_buff[5] = ncq_log->lba_23_16;
   information_buff[6] = ncq_log->lba_15_8;
   information_buff[7] = ncq_log->lba_7_0;

   sati_scsi_common_descriptor_sense_construct(
           sequence,
           scsi_io,
           sense_data,
           sense_len,
           sense_key,
           additional_sense_code,
           additional_sense_code_qualifier,
           information_buff
   );
}
