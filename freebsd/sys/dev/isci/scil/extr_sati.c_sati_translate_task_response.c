
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int ATA_STATUS_REG_DEVICE_FAULT_BIT ;
 int ATA_STATUS_REG_ERROR_BIT ;
 int SATI_COMPLETE ;
 int SATI_FAILURE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_FAILURE_INVALID_SEQUENCE_TYPE ;


 int SCSI_TASK_MGMT_FUNC_COMPLETE ;
 int SCSI_TASK_MGMT_FUNC_FAILED ;
 int sati_abort_task_set_translate_data (TYPE_1__*,void*,void*) ;
 void* sati_cb_get_ata_data_address (void*) ;
 int* sati_cb_get_d2h_register_fis_address (void*) ;
 scalar_t__ sati_get_ata_status (int*) ;
 int sati_scsi_response_data_construct (TYPE_1__*,void*,int ) ;

SATI_STATUS sati_translate_task_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_STATUS status = SATI_FAILURE_CHECK_RESPONSE_DATA;
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(ata_io);
   U8 ata_status;





   ata_status = (U8) sati_get_ata_status(register_fis);
   if (ata_status & ATA_STATUS_REG_DEVICE_FAULT_BIT)
   {
      sati_scsi_response_data_construct(
         sequence,
         scsi_io,
         SCSI_TASK_MGMT_FUNC_FAILED
      );
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }



   switch (sequence->type)
   {
      case 128:
         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            sati_scsi_response_data_construct(
               sequence, scsi_io, SCSI_TASK_MGMT_FUNC_FAILED);
         }
         else
         {
            sati_scsi_response_data_construct(
               sequence, scsi_io, SCSI_TASK_MGMT_FUNC_COMPLETE);
         }

         status = SATI_COMPLETE;
      break;


      case 129:
         if (ata_status & ATA_STATUS_REG_ERROR_BIT)
         {
            sati_scsi_response_data_construct(
               sequence, scsi_io, SCSI_TASK_MGMT_FUNC_FAILED);
         }
         else
         {
            void * ata_data = sati_cb_get_ata_data_address(ata_io);

            if(ata_data == ((void*)0))
            {
               status = SATI_FAILURE;
            }
            else
            {
               status = sati_abort_task_set_translate_data(
                           sequence,
                           ata_data,
                           scsi_io
                        );
            }
         }
      break;


      default:
         status = SATI_FAILURE_INVALID_SEQUENCE_TYPE;
      break;
   }

   return status;
}
