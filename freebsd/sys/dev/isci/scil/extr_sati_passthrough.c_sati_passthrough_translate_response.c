
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_5__ {int state; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_STATUS_REG_ERROR_BIT ;
 scalar_t__ PASSTHROUGH_CDB_CK_COND (int *) ;
 scalar_t__ PASSTHROUGH_CDB_PROTOCOL (int *) ;
 scalar_t__ PASSTHROUGH_RETURN_RESPONSE ;
 int SATI_COMPLETE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_STATE_FINAL ;
 int SCSI_ASCQ_ATA_PASS_THROUGH_INFORMATION_AVAILABLE ;
 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_SENSE_RECOVERED_ERROR ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_cdb_address (void*) ;
 int * sati_cb_get_d2h_register_fis_address (void*) ;
 scalar_t__ sati_get_ata_error (int *) ;
 int sati_get_ata_status (int *) ;
 int sati_passthrough_construct_sense (TYPE_1__*,int *,void*,int ,int ,int ,int ) ;
 int sati_translate_error (TYPE_1__*,void*,int ) ;

SATI_STATUS sati_passthrough_translate_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb;
   U8 * register_fis;

   cdb = sati_cb_get_cdb_address(scsi_io);
   register_fis = sati_cb_get_d2h_register_fis_address(ata_io);


   if (sati_get_ata_status(register_fis) & ATA_STATUS_REG_ERROR_BIT)
   {
      sati_translate_error(sequence, scsi_io, (U8)sati_get_ata_error(register_fis));
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   sequence->state = SATI_SEQUENCE_STATE_FINAL;


   if (PASSTHROUGH_CDB_CK_COND(cdb) ||
       PASSTHROUGH_CDB_PROTOCOL(cdb) == PASSTHROUGH_RETURN_RESPONSE)
   {
      sati_passthrough_construct_sense(
         sequence,
         register_fis,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_RECOVERED_ERROR,
         SCSI_ASC_NO_ADDITIONAL_SENSE,
         SCSI_ASCQ_ATA_PASS_THROUGH_INFORMATION_AVAILABLE
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }

   return SATI_COMPLETE;
}
