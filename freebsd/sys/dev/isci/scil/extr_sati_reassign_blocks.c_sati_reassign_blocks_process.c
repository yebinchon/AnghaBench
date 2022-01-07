
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_9__ {scalar_t__ lba_offset; scalar_t__ lba_size; scalar_t__ block_lists_size; scalar_t__ size_of_data_processed; } ;
struct TYPE_7__ {TYPE_3__ reassign_blocks_process_state; } ;
struct TYPE_8__ {int state; TYPE_1__ command_specific_data; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;
typedef TYPE_3__ SATI_REASSIGN_BLOCKS_PROCESSING_STATE_T ;


 int SATI_COMPLETE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_SEQUENCE_STATE_FINAL ;
 int sati_reassign_blocks_process_each_lba (TYPE_2__*,void*,void*) ;
 scalar_t__ sati_reassign_blocks_unprocessed_data_size (TYPE_3__*) ;

__attribute__((used)) static
SATI_STATUS sati_reassign_blocks_process(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_STATUS status = SATI_FAILURE_CHECK_RESPONSE_DATA;

   U32 page_size = 0;
   U32 size_of_data_to_be_processed;
   U32 lba_offset;
   SATI_REASSIGN_BLOCKS_PROCESSING_STATE_T * reassign_blocks_process_state;

   reassign_blocks_process_state = &sequence->command_specific_data.reassign_blocks_process_state;

   lba_offset = reassign_blocks_process_state->lba_offset;
   page_size = reassign_blocks_process_state->lba_size;


   if(sati_reassign_blocks_unprocessed_data_size(reassign_blocks_process_state) < page_size)
   {
      return status;
   }


   if(reassign_blocks_process_state->block_lists_size ==
      reassign_blocks_process_state->size_of_data_processed)
   {
      sequence->state = SATI_SEQUENCE_STATE_FINAL;
      status = SATI_COMPLETE;
   }

   else
   {
      size_of_data_to_be_processed = reassign_blocks_process_state->block_lists_size
         - reassign_blocks_process_state->size_of_data_processed;

      status = sati_reassign_blocks_process_each_lba(sequence, scsi_io, ata_io);

   }

   return status;
}
