
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_6__ {int state; TYPE_1__* device; } ;
struct TYPE_5__ {int state; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;
typedef int SATA_FIS_REG_D2H_T ;


 int ATA_STATUS_REG_DEVICE_FAULT_BIT ;
 int ATA_STATUS_REG_ERROR_BIT ;
 int SATI_COMPLETE ;
 int SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_INCOMPLETE ;
 int SATI_SEQUENCE_STATE_INCOMPLETE ;
 int SCSI_ASCQ_INTERNAL_TARGET_FAILURE ;
 int SCSI_ASC_INTERNAL_TARGET_FAILURE ;
 int SCSI_SENSE_HARDWARE_ERROR ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int memset (int*,int ,int) ;
 int* sati_cb_get_d2h_register_fis_address (void*) ;
 scalar_t__ sati_get_ata_status (int*) ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;

SATI_STATUS sati_atapi_translate_command_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * atapi_io
)
{
   SATI_STATUS status = SATI_COMPLETE;
   U8 * register_fis = sati_cb_get_d2h_register_fis_address(atapi_io);
   U8 ata_status;





   ata_status = (U8) sati_get_ata_status(register_fis);
   if (ata_status & ATA_STATUS_REG_DEVICE_FAULT_BIT)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_HARDWARE_ERROR,
         SCSI_ASC_INTERNAL_TARGET_FAILURE,
         SCSI_ASCQ_INTERNAL_TARGET_FAILURE
      );

      sequence->device->state = SATI_DEVICE_STATE_DEVICE_FAULT_OCCURRED;

      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else if (ata_status & ATA_STATUS_REG_ERROR_BIT)
   {

       memset(register_fis, 0, sizeof(SATA_FIS_REG_D2H_T));


       sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
       return SATI_SEQUENCE_INCOMPLETE;
   }

   return status;
}
