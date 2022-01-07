
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef scalar_t__ U32 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 scalar_t__ ATA_HIGH_REGISTER_THRESHOLD_EXCEEDED ;
 scalar_t__ ATA_MID_REGISTER_THRESHOLD_EXCEEDED ;
 int SCSI_ASCQ_GENERAL_HARD_DRIVE_FAILURE ;
 int SCSI_ASCQ_NO_ADDITIONAL_SENSE ;
 int SCSI_ASC_HARDWARE_IMPENDING_FAILURE ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_LOG_PAGE_INFORMATION_EXCEPTION ;
 int * sati_cb_get_d2h_register_fis_address (void*) ;
 scalar_t__ sati_get_ata_lba_high (int *) ;
 scalar_t__ sati_get_ata_lba_mid (int *) ;
 int sati_set_data_byte (int *,void*,int,int) ;

__attribute__((used)) static
void sati_information_exception_log_page_contruct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);
   U32 mid_register = sati_get_ata_lba_mid(register_fis);
   U32 high_register = sati_get_ata_lba_high(register_fis);


   sati_set_data_byte(
      sequence,
      scsi_io,
      0,
      SCSI_LOG_PAGE_INFORMATION_EXCEPTION
   );


   sati_set_data_byte(sequence, scsi_io, 1, 0x00);


   sati_set_data_byte(sequence, scsi_io, 2, 0x00);
   sati_set_data_byte(sequence, scsi_io, 3, 0x08);


   sati_set_data_byte(sequence, scsi_io, 4, 0x00);
   sati_set_data_byte(sequence, scsi_io, 5, 0x00);


   sati_set_data_byte(sequence, scsi_io, 6, 0x03);

   sati_set_data_byte(sequence, scsi_io, 7, 0x04);

   if(mid_register == ATA_MID_REGISTER_THRESHOLD_EXCEEDED
      && high_register == ATA_HIGH_REGISTER_THRESHOLD_EXCEEDED)
   {
      sati_set_data_byte(
         sequence,
         scsi_io,
         8,
         SCSI_ASC_HARDWARE_IMPENDING_FAILURE
      );

      sati_set_data_byte(
         sequence,
         scsi_io,
         9,
         SCSI_ASCQ_GENERAL_HARD_DRIVE_FAILURE
      );
   }
   else
   {
      sati_set_data_byte(sequence, scsi_io, 8, SCSI_ASC_NO_ADDITIONAL_SENSE);
      sati_set_data_byte(sequence, scsi_io, 9, SCSI_ASCQ_NO_ADDITIONAL_SENSE);
   }

   sati_set_data_byte(sequence, scsi_io, 10, 0xFF);
}
