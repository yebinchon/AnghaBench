
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_3__ {scalar_t__ block_lists_size; scalar_t__ size_of_data_processed; } ;
typedef TYPE_1__ SATI_REASSIGN_BLOCKS_PROCESSING_STATE_T ;



__attribute__((used)) static
U32 sati_reassign_blocks_unprocessed_data_size(
   SATI_REASSIGN_BLOCKS_PROCESSING_STATE_T * lba_process_state
)
{
   U32 unprocessed_data_size;

   if(lba_process_state->block_lists_size >= lba_process_state->size_of_data_processed)
   {
      unprocessed_data_size = lba_process_state->block_lists_size -
         lba_process_state->size_of_data_processed;
   }
   else
   {
      unprocessed_data_size = 0;
   }

   return unprocessed_data_size;
}
