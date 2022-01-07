
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef scalar_t__ SATI_STATUS ;


 scalar_t__ SATI_FAILURE ;
 scalar_t__ SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_FIELD_IN_PARM_LIST ;
 int SCSI_MODE_SELECT_PF_BIT ;
 int SCSI_MODE_SELECT_PF_MASK ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 scalar_t__ sati_mode_select_translate_command (int *,void*,void*,int) ;
 int sati_scsi_sense_data_construct (int *,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_mode_select_6_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_STATUS status=SATI_FAILURE;
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);


   if ((sati_get_cdb_byte(cdb, 1) & SCSI_MODE_SELECT_PF_MASK) == !SCSI_MODE_SELECT_PF_BIT)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      status = SATI_FAILURE_CHECK_RESPONSE_DATA;
      return status;
   }

   status=sati_mode_select_translate_command(
             sequence,
             scsi_io,
             ata_io,
             6
          );

   if(status == SATI_FAILURE_CHECK_RESPONSE_DATA)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_PARM_LIST,
         SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST
      );
   }
   return status;

}
