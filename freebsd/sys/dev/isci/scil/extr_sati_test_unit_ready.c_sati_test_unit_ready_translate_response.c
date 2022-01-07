
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_STATUS_REG_ERROR_BIT ;
 int SATI_COMPLETE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SCSI_ASCQ_LUN_NOT_RESPOND_TO_SELECTION ;
 int SCSI_ASC_LUN_NOT_RESPOND_TO_SELECTION ;
 int SCSI_SENSE_NOT_READY ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_d2h_register_fis_address (void*) ;
 int sati_get_ata_status (int *) ;
 int sati_scsi_sense_data_construct (int *,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_test_unit_ready_translate_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);
   if (sati_get_ata_status(register_fis) & ATA_STATUS_REG_ERROR_BIT)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_NOT_READY,
         SCSI_ASC_LUN_NOT_RESPOND_TO_SELECTION,
         SCSI_ASCQ_LUN_NOT_RESPOND_TO_SELECTION
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   return SATI_COMPLETE;
}
