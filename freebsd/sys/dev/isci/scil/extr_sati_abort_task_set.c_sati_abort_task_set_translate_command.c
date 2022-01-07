
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_4__ {int state; int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;
typedef int ATA_NCQ_COMMAND_ERROR_LOG_T ;


 int ATA_LOG_PAGE_NCQ_ERROR ;
 int SATI_SEQUENCE_ABORT_TASK_SET ;
 int SATI_SEQUENCE_STATE_AWAIT_RESPONSE ;
 int SATI_SUCCESS ;
 int sati_ata_read_log_ext_construct (void*,TYPE_1__*,int ,int) ;
 int * sati_cb_get_h2d_register_fis_address (void*) ;
 int sati_set_sata_command_flag (int *) ;

SATI_STATUS sati_abort_task_set_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 * register_fis;


   sati_ata_read_log_ext_construct(
      ata_io,
      sequence,
      ATA_LOG_PAGE_NCQ_ERROR,
      sizeof(ATA_NCQ_COMMAND_ERROR_LOG_T)
   );

   register_fis = sati_cb_get_h2d_register_fis_address(ata_io);
   sati_set_sata_command_flag(register_fis);

   sequence->type = SATI_SEQUENCE_ABORT_TASK_SET;
   sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;

   return SATI_SUCCESS;
}
