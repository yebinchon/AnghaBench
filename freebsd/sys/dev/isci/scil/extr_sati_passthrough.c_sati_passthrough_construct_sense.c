
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_7__ {int is_sense_response_set; } ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef TYPE_1__ SCI_SSP_RESPONSE_IU_T ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;


 int PASSTHROUGH_CDB_EXTEND (int*) ;
 int SCSI_FIXED_SENSE_DATA_BASE_LENGTH ;
 int SCSI_RESPONSE_DATA_PRES_SENSE_DATA ;
 int SSP_RESPONSE_IU_MAX_DATA ;
 int TRUE ;
 int* sati_cb_get_cdb_address (void*) ;
 scalar_t__ sati_cb_get_response_iu_address (void*) ;
 int* sati_cb_get_sense_data_address (void*) ;
 int sati_cb_get_sense_data_length (void*) ;
 int sati_get_ata_device (int*) ;
 scalar_t__ sati_get_ata_error (int*) ;
 int sati_get_ata_lba_high (int*) ;
 scalar_t__ sati_get_ata_lba_high_ext (int*) ;
 int sati_get_ata_lba_low (int*) ;
 scalar_t__ sati_get_ata_lba_low_ext (int*) ;
 int sati_get_ata_lba_mid (int*) ;
 scalar_t__ sati_get_ata_lba_mid_ext (int*) ;
 int sati_get_ata_sector_count (int*) ;
 scalar_t__ sati_get_ata_sector_count_ext (int*) ;
 scalar_t__ sati_get_ata_status (int*) ;
 int sati_scsi_common_response_iu_construct (TYPE_1__*,int,int ,int ) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int,int,int,int) ;
 int sati_set_sense_data_byte (int*,int,int,int) ;

__attribute__((used)) static
void sati_passthrough_construct_sense(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   U8 * register_fis,
   void * scsi_io,
   U8 scsi_status,
   U8 sense_key,
   U8 additional_sense_code,
   U8 additional_sense_code_qualifier
)
{
   U8 * sense_data;
   U32 sense_len;
   U8 * cdb;
   unsigned char sector_count_upper;
   unsigned char lba_upper;
   sense_data = sati_cb_get_sense_data_address(scsi_io);
   sense_len = sati_cb_get_sense_data_length(scsi_io);


   sati_scsi_sense_data_construct(
      sequence,
      scsi_io,
      scsi_status,
      sense_key,
      additional_sense_code,
      additional_sense_code_qualifier
   );

   cdb = sati_cb_get_cdb_address(scsi_io);

   if (sati_get_ata_sector_count_ext(register_fis) != 0) {
      sector_count_upper = 1;
   } else {
       sector_count_upper = 0;
   }

   if (sati_get_ata_lba_high_ext(register_fis) != 0 ||
       sati_get_ata_lba_mid_ext(register_fis) != 0 ||
       sati_get_ata_lba_low_ext(register_fis) != 0) {
      lba_upper = 1;
   } else {
       lba_upper = 0;
   }


   sati_set_sense_data_byte(sense_data, sense_len, 3, (U8)sati_get_ata_error(register_fis));
   sati_set_sense_data_byte(sense_data, sense_len, 4, (U8)sati_get_ata_status(register_fis));
   sati_set_sense_data_byte(sense_data, sense_len, 5, sati_get_ata_device(register_fis));
   sati_set_sense_data_byte(sense_data, sense_len, 6, sati_get_ata_sector_count(register_fis));


   sati_set_sense_data_byte(sense_data, sense_len, 8, (PASSTHROUGH_CDB_EXTEND(cdb) << 7) | (sector_count_upper << 6) | (lba_upper << 5));
   sati_set_sense_data_byte(sense_data, sense_len, 9, sati_get_ata_lba_low(register_fis));
   sati_set_sense_data_byte(sense_data, sense_len, 10, sati_get_ata_lba_mid(register_fis));
   sati_set_sense_data_byte(sense_data, sense_len, 11, sati_get_ata_lba_high(register_fis));

   sequence->is_sense_response_set = TRUE;
}
