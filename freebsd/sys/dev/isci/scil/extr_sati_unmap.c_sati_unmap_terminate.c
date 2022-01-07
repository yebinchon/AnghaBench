
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * virtual_unmap_buffer; } ;
struct TYPE_5__ {TYPE_2__ unmap_process_state; } ;
struct TYPE_7__ {TYPE_1__ command_specific_data; } ;
typedef TYPE_2__ SATI_UNMAP_PROCESSING_STATE_T ;
typedef TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;


 int sati_cb_free_dma_buffer (void*,int *) ;

void sati_unmap_terminate(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_UNMAP_PROCESSING_STATE_T * unmap_process_state;
   unmap_process_state = &sequence->command_specific_data.unmap_process_state;

   if (unmap_process_state->virtual_unmap_buffer != ((void*)0))
   {
      sati_cb_free_dma_buffer(scsi_io, unmap_process_state->virtual_unmap_buffer);
      unmap_process_state->virtual_unmap_buffer = ((void*)0);
   }
}
