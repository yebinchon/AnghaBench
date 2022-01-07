
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_5__ {int allocation_length; int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_READ_CAPACITY_16 ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_READ_CAPACITY_PMI_BIT_ENABLE ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int sati_ata_identify_device_construct (void*,TYPE_1__*) ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_scsi_sense_data_construct (TYPE_1__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_read_capacity_16_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);






   if (
         (
            (sati_get_cdb_byte(cdb, 2) != 0)
         || (sati_get_cdb_byte(cdb, 3) != 0)
         || (sati_get_cdb_byte(cdb, 4) != 0)
         || (sati_get_cdb_byte(cdb, 5) != 0)
         || (sati_get_cdb_byte(cdb, 6) != 0)
         || (sati_get_cdb_byte(cdb, 7) != 0)
         || (sati_get_cdb_byte(cdb, 8) != 0)
         || (sati_get_cdb_byte(cdb, 9) != 0)
         )
         || ((sati_get_cdb_byte(cdb, 14) & SCSI_READ_CAPACITY_PMI_BIT_ENABLE)
              == 1)
      )
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_ILLEGAL_REQUEST,
         SCSI_ASC_INVALID_FIELD_IN_CDB,
         SCSI_ASCQ_INVALID_FIELD_IN_CDB
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }


   sequence->allocation_length = (sati_get_cdb_byte(cdb, 10) << 24) |
                                 (sati_get_cdb_byte(cdb, 11) << 16) |
                                 (sati_get_cdb_byte(cdb, 12) << 8) |
                                 (sati_get_cdb_byte(cdb, 13));

   sequence->type = SATI_SEQUENCE_READ_CAPACITY_16;

   sati_ata_identify_device_construct(ata_io, sequence);
   return SATI_SUCCESS;
}
