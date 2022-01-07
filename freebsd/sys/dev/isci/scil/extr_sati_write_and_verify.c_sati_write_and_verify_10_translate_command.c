
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int type; int is_translate_response_required; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_FAILURE ;
 scalar_t__ SATI_SEQUENCE_STATE_AWAIT_RESPONSE ;
 scalar_t__ SATI_SEQUENCE_STATE_INCOMPLETE ;
 scalar_t__ SATI_SEQUENCE_STATE_INITIAL ;
 int SATI_SEQUENCE_WRITE_AND_VERIFY ;
 int TRUE ;
 int sati_verify_10_translate_command (TYPE_1__*,void*,void*) ;
 int sati_write_10_translate_command (TYPE_1__*,void*,void*) ;

SATI_STATUS sati_write_and_verify_10_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_STATUS status;

   if(sequence->state == SATI_SEQUENCE_STATE_INITIAL)
   {
      status = sati_write_10_translate_command(sequence, scsi_io, ata_io);
      sequence->state = SATI_SEQUENCE_STATE_INCOMPLETE;
      sequence->is_translate_response_required = TRUE;
   }
   else if(sequence->state == SATI_SEQUENCE_STATE_INCOMPLETE)
   {
      status = sati_verify_10_translate_command(sequence, scsi_io, ata_io);
      sequence->state = SATI_SEQUENCE_STATE_AWAIT_RESPONSE;
   }
   else
   {

      return SATI_FAILURE;
   }

   sequence->type = SATI_SEQUENCE_WRITE_AND_VERIFY;
   return status;
}
