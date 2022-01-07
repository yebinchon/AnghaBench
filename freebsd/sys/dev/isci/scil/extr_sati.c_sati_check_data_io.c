
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ number_data_bytes_set; scalar_t__ allocation_length; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_COMPLETE ;
 int SATI_COMPLETE_IO_DONE_EARLY ;
 int SATI_SEQUENCE_INCOMPLETE ;
 scalar_t__ SATI_SEQUENCE_STATE_INCOMPLETE ;

__attribute__((used)) static
SATI_STATUS sati_check_data_io(
   SATI_TRANSLATOR_SEQUENCE_T * sequence
)
{
   if(sequence->state == SATI_SEQUENCE_STATE_INCOMPLETE)
   {
      return SATI_SEQUENCE_INCOMPLETE;
   }
   else if(sequence->number_data_bytes_set < sequence->allocation_length)
   {
      return SATI_COMPLETE_IO_DONE_EARLY;
   }
   else
   {
      return SATI_COMPLETE;
   }
}
