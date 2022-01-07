
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_6__ {int type; TYPE_1__* device; } ;
struct TYPE_5__ {int capabilities; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_DEVICE_CAP_SMART_SUPPORT ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_MODE_SENSE_10_ALL_PAGES ;
 int SATI_SEQUENCE_MODE_SENSE_10_CACHING ;
 int SATI_SEQUENCE_MODE_SENSE_10_CONTROL ;
 int SATI_SEQUENCE_MODE_SENSE_10_DISCONNECT_RECONNECT ;
 int SATI_SEQUENCE_MODE_SENSE_10_INFORMATIONAL_EXCP_CONTROL ;
 int SATI_SEQUENCE_MODE_SENSE_10_POWER_CONDITION ;
 int SATI_SEQUENCE_MODE_SENSE_10_READ_WRITE_ERROR ;
 int SATI_SEQUENCE_MODE_SENSE_6_ALL_PAGES ;
 int SATI_SEQUENCE_MODE_SENSE_6_CACHING ;
 int SATI_SEQUENCE_MODE_SENSE_6_CONTROL ;
 int SATI_SEQUENCE_MODE_SENSE_6_DISCONNECT_RECONNECT ;
 int SATI_SEQUENCE_MODE_SENSE_6_INFORMATIONAL_EXCP_CONTROL ;
 int SATI_SEQUENCE_MODE_SENSE_6_POWER_CONDITION ;
 int SATI_SEQUENCE_MODE_SENSE_6_READ_WRITE_ERROR ;
 int SATI_SUCCESS ;
 int SCSI_ASCQ_INVALID_FIELD_IN_CDB ;
 int SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST ;
 int SCSI_ASC_INVALID_FIELD_IN_CDB ;
 int SCSI_ASC_INVALID_FIELD_IN_PARM_LIST ;







 int SCSI_MODE_SENSE_6 ;
 int SCSI_MODE_SENSE_PAGE_CODE_ENABLE ;
 int SCSI_SENSE_ILLEGAL_REQUEST ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int * sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int *,int) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;

__attribute__((used)) static
SATI_STATUS sati_mode_sense_is_page_code_supported(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   U8 cdb_length
)
{
   U8 * cdb = sati_cb_get_cdb_address(scsi_io);

   switch (sati_get_cdb_byte(cdb, 2) & SCSI_MODE_SENSE_PAGE_CODE_ENABLE)
   {
      case 133:
         if (sati_get_cdb_byte(cdb, 0) == SCSI_MODE_SENSE_6)
            sequence->type = SATI_SEQUENCE_MODE_SENSE_6_CACHING;
         else
            sequence->type = SATI_SEQUENCE_MODE_SENSE_10_CACHING;
      break;

      case 134:
         if (sati_get_cdb_byte(cdb, 0) == SCSI_MODE_SENSE_6)
            sequence->type = SATI_SEQUENCE_MODE_SENSE_6_ALL_PAGES;
         else
            sequence->type = SATI_SEQUENCE_MODE_SENSE_10_ALL_PAGES;
      break;

      case 128:
         if (sati_get_cdb_byte(cdb, 0) == SCSI_MODE_SENSE_6)
            sequence->type = SATI_SEQUENCE_MODE_SENSE_6_READ_WRITE_ERROR;
         else
            sequence->type = SATI_SEQUENCE_MODE_SENSE_10_READ_WRITE_ERROR;
      break;

      case 131:
         if (sati_get_cdb_byte(cdb, 0) == SCSI_MODE_SENSE_6)
            sequence->type = SATI_SEQUENCE_MODE_SENSE_6_DISCONNECT_RECONNECT;
         else
            sequence->type = SATI_SEQUENCE_MODE_SENSE_10_DISCONNECT_RECONNECT;
      break;

      case 132:
         if (sati_get_cdb_byte(cdb, 0) == SCSI_MODE_SENSE_6)
            sequence->type = SATI_SEQUENCE_MODE_SENSE_6_CONTROL;
         else
            sequence->type = SATI_SEQUENCE_MODE_SENSE_10_CONTROL;
      break;

      case 129:
         if (sati_get_cdb_byte(cdb, 0) == SCSI_MODE_SENSE_6)
            sequence->type = SATI_SEQUENCE_MODE_SENSE_6_POWER_CONDITION;
         else
            sequence->type = SATI_SEQUENCE_MODE_SENSE_10_POWER_CONDITION;
      break;

      case 130:


         if ((sequence->device->capabilities | SATI_DEVICE_CAP_SMART_SUPPORT)
             == 0)
         {


            if (sati_get_cdb_byte(cdb, 0) == SCSI_MODE_SENSE_6)
            {
               sati_scsi_sense_data_construct(
                  sequence,
                  scsi_io,
                  SCSI_STATUS_CHECK_CONDITION,
                  SCSI_SENSE_ILLEGAL_REQUEST,
                  SCSI_ASC_INVALID_FIELD_IN_CDB,
                  SCSI_ASCQ_INVALID_FIELD_IN_CDB
               );
            }
            else
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

            return SATI_FAILURE_CHECK_RESPONSE_DATA;
         }

         if (sati_get_cdb_byte(cdb, 0) == SCSI_MODE_SENSE_6)
            sequence->type = SATI_SEQUENCE_MODE_SENSE_6_INFORMATIONAL_EXCP_CONTROL;
         else
            sequence->type = SATI_SEQUENCE_MODE_SENSE_10_INFORMATIONAL_EXCP_CONTROL;
      break;

      default:
         sati_scsi_sense_data_construct(
            sequence,
            scsi_io,
            SCSI_STATUS_CHECK_CONDITION,
            SCSI_SENSE_ILLEGAL_REQUEST,
            SCSI_ASC_INVALID_FIELD_IN_CDB,
            SCSI_ASCQ_INVALID_FIELD_IN_CDB
         );
         return SATI_FAILURE_CHECK_RESPONSE_DATA;
      break;
   }

   return SATI_SUCCESS;
}
