
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_COMPLETE ;
 int SATI_FAILURE ;
 int SATI_SEQUENCE_INCOMPLETE ;
 scalar_t__ SATI_SEQUENCE_STATE_AWAIT_RESPONSE ;
 scalar_t__ SATI_SEQUENCE_STATE_FINAL ;
 scalar_t__ SATI_SEQUENCE_STATE_INCOMPLETE ;

SATI_STATUS sati_write_and_verify_translate_response(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   if(sequence->state == SATI_SEQUENCE_STATE_INCOMPLETE)
   {
      return SATI_SEQUENCE_INCOMPLETE;
   }
   else if(sequence->state == SATI_SEQUENCE_STATE_AWAIT_RESPONSE)
   {
      sequence->state = SATI_SEQUENCE_STATE_FINAL;
      return SATI_COMPLETE;
   }

   return SATI_FAILURE;
}
