
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int SCSI_DESCRIPTOR_CURRENT_RESPONSE_CODE ;
 int * sati_cb_get_d2h_register_fis_address (void*) ;
 int sati_get_ata_lba_high (int *) ;
 int sati_get_ata_lba_high_ext (int *) ;
 int sati_get_ata_lba_low (int *) ;
 int sati_get_ata_lba_low_ext (int *) ;
 int sati_get_ata_lba_mid (int *) ;
 int sati_get_ata_lba_mid_ext (int *) ;
 int sati_scsi_common_descriptor_sense_construct (int *,void*,int *,int ,int ,int ,int ,int *) ;
 int sati_scsi_get_sense_data_buffer (int *,void*,int ,int **,int *) ;
 int sati_set_sense_data_byte (int *,int ,int ,int ) ;

__attribute__((used)) static
void sati_scsi_read_error_descriptor_sense_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io,
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

   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);

   sati_scsi_get_sense_data_buffer(sequence, scsi_io, scsi_status, &sense_data, &sense_len);

   information_buff[2] = sati_get_ata_lba_high_ext(register_fis);
   information_buff[3] = sati_get_ata_lba_mid_ext(register_fis);
   information_buff[4] = sati_get_ata_lba_low_ext(register_fis);
   information_buff[5] = sati_get_ata_lba_high(register_fis);
   information_buff[6] = sati_get_ata_lba_mid(register_fis);
   information_buff[7] = sati_get_ata_lba_low(register_fis);

   sati_set_sense_data_byte(
      sense_data,
      sense_len,
      0,
      SCSI_DESCRIPTOR_CURRENT_RESPONSE_CODE
   );

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
