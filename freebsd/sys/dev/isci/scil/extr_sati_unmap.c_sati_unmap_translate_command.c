
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int unmap_process_state; } ;
struct TYPE_7__ {scalar_t__ state; TYPE_1__ command_specific_data; } ;
typedef int SATI_UNMAP_PROCESSING_STATE_T ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef scalar_t__ SATI_STATUS ;


 scalar_t__ SATI_COMPLETE ;
 scalar_t__ SATI_FAILURE_CHECK_RESPONSE_DATA ;
 scalar_t__ SATI_SEQUENCE_STATE_INITIAL ;
 scalar_t__ sati_unmap_initial_processing (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_unmap_process (TYPE_2__*,void*,void*) ;

SATI_STATUS sati_unmap_translate_command(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_STATUS status = SATI_FAILURE_CHECK_RESPONSE_DATA;
   SATI_UNMAP_PROCESSING_STATE_T * unmap_process_state;

   unmap_process_state = &sequence->command_specific_data.unmap_process_state;


   if ( sequence->state == SATI_SEQUENCE_STATE_INITIAL )
   {
       status = sati_unmap_initial_processing(sequence,scsi_io,ata_io);
       if (status != SATI_COMPLETE)
       {
          return status;
       }
   }

   return sati_unmap_process(sequence, scsi_io, ata_io);
}
