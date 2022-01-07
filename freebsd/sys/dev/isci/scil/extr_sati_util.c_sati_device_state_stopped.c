
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ SATI_DEVICE_STATE_STOPPED ;
 int SCSI_ASCQ_INITIALIZING_COMMAND_REQUIRED ;
 int SCSI_ASC_INITIALIZING_COMMAND_REQUIRED ;
 int SCSI_SENSE_NOT_READY ;
 int SCSI_STATUS_CHECK_CONDITION ;
 int TRUE ;
 int sati_scsi_sense_data_construct (TYPE_2__*,void*,int ,int ,int ,int ) ;

BOOL sati_device_state_stopped(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io
)
{
   if(sequence->device->state == SATI_DEVICE_STATE_STOPPED)
   {
      sati_scsi_sense_data_construct(
         sequence,
         scsi_io,
         SCSI_STATUS_CHECK_CONDITION,
         SCSI_SENSE_NOT_READY ,
         SCSI_ASC_INITIALIZING_COMMAND_REQUIRED,
         SCSI_ASCQ_INITIALIZING_COMMAND_REQUIRED
      );
      return TRUE;
   }
   return FALSE;
}
