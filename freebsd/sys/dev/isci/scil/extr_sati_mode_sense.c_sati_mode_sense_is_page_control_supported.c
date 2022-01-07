
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_SAVING_PARMS_NOT_SUPPORTED ;
 int SCSI_ASC_SAVING_PARMS_NOT_SUPPORTED ;




 int SCSI_MODE_SENSE_PC_SHIFT ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_scsi_sense_data_construct (int *,void*,int ,int ,int ,int ) ;

__attribute__((used)) static
SATI_STATUS sati_mode_sense_is_page_control_supported(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);

   switch (sati_get_cdb_byte(cdb, 2) >> SCSI_MODE_SENSE_PC_SHIFT)
   {
      case 130:
      case 129:
      case 131:
         return SATI_SUCCESS;
      break;

      default:
      case 128:
         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_SAVING_PARMS_NOT_SUPPORTED,
            SCSI_ASCQ_SAVING_PARMS_NOT_SUPPORTED
         );
         return SATI_FAILURE_CHECK_RESPONSE_DATA;
      break;
   }
}
