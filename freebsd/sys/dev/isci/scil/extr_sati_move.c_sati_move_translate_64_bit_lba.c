
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_LBA_OUT_OF_RANGE ;
 int SCSI_ASC_LBA_OUT_OF_RANGE ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_cdb_address (void*) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 scalar_t__ sati_get_cdb_byte (int *,int) ;
 int sati_scsi_sense_data_construct (int *,void*,int ,int ,int ,int ) ;
 int sati_set_ata_lba_high (int *,scalar_t__) ;
 int sati_set_ata_lba_high_exp (int *,scalar_t__) ;
 int sati_set_ata_lba_low (int *,scalar_t__) ;
 int sati_set_ata_lba_low_exp (int *,scalar_t__) ;
 int sati_set_ata_lba_mid (int *,scalar_t__) ;
 int sati_set_ata_lba_mid_exp (int *,scalar_t__) ;

SATI_STATUS sati_move_translate_64_bit_lba(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);
   U8 * register_fis = sati_cb_get_h2d_register_fis_address(ata_io);



   if ( (sati_get_cdb_byte(cdb, 2) == 0) && (sati_get_cdb_byte(cdb, 3) == 0) )
   {
      sati_set_ata_lba_low(register_fis, sati_get_cdb_byte(cdb, 9));
      sati_set_ata_lba_mid(register_fis, sati_get_cdb_byte(cdb, 8));
      sati_set_ata_lba_high(register_fis, sati_get_cdb_byte(cdb, 7));
      sati_set_ata_lba_low_exp(register_fis, sati_get_cdb_byte(cdb, 6));
      sati_set_ata_lba_mid_exp(register_fis, sati_get_cdb_byte(cdb, 5));
      sati_set_ata_lba_high_exp(register_fis, sati_get_cdb_byte(cdb, 4));
      return SATI_SUCCESS;
   }
   else
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_LBA_OUT_OF_RANGE,
         SCSI_ASCQ_LBA_OUT_OF_RANGE
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
}
