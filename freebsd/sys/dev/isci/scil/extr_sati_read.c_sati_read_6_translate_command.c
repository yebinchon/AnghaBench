
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int data_direction; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_DATA_DIRECTION_IN ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_READ_6 ;
 scalar_t__ sati_device_state_stopped (TYPE_1__*,void*) ;
 int sati_move_small_translate_command (TYPE_1__*,void*,void*) ;

SATI_STATUS sati_read_6_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   if(sati_device_state_stopped(sequence, scsi_io))
   {
      return SATI_FAILURE_CHECK_RESPONSE_DATA;
   }
   else
   {
      sequence->data_direction = SATI_DATA_DIRECTION_IN;
      sequence->type = SATI_SEQUENCE_READ_6;

      return sati_move_small_translate_command(sequence, scsi_io, ata_io);
   }
}
