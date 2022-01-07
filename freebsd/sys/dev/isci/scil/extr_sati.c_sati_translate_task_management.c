
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_5__ {int * device; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;
typedef int SATI_DEVICE_T ;


 int SATI_FAILURE ;



 int sati_abort_task_set_translate_command (TYPE_1__*,void*,void*) ;
 int sati_cb_get_task_function (void*) ;
 int sati_lun_reset_translate_command (TYPE_1__*,void*,void*) ;

SATI_STATUS sati_translate_task_management(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   SATI_DEVICE_T * sati_device,
   void * scsi_task,
   void * ata_io
)
{
   SATI_STATUS status=SATI_FAILURE;
   U8 task_function = sati_cb_get_task_function(scsi_task);

   sequence->device = sati_device;

   switch (task_function)
   {




      case 130:
      case 128:
         status = sati_lun_reset_translate_command(sequence, scsi_task, ata_io);
      break;

      case 129:

         status = sati_abort_task_set_translate_command(sequence, scsi_task, ata_io);



         break;
      default:
         status = SATI_FAILURE;
      break;
   }

   return status;
}
