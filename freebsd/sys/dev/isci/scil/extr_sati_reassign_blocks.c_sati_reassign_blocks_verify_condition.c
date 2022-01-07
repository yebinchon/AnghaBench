
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t U8 ;
typedef size_t U32 ;
struct TYPE_7__ {size_t lba_offset; size_t lba_size; int ata_command_status; int ata_command_sent_for_current_lba; } ;
struct TYPE_8__ {TYPE_1__ reassign_blocks_process_state; } ;
struct TYPE_9__ {TYPE_2__ command_specific_data; } ;
typedef TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int SATI_REASSIGN_BLOCKS_READY_TO_SEND ;
 int sati_get_data_byte (TYPE_3__*,void*,size_t,size_t*) ;
 int sati_reassign_blocks_verify_command (TYPE_3__*,void*,void*) ;
 int set_current_lba (size_t*,void*) ;
 int set_current_long_lba (size_t*,void*) ;

__attribute__((used)) static
SATI_STATUS sati_reassign_blocks_verify_condition(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U8 current_lba_bytes[8] = {0,0,0,0,0,0,0,0};
   U32 lba_offset;
   U8 page_size;
   U32 index;
   SATI_STATUS status = SATI_FAILURE_CHECK_RESPONSE_DATA;

   lba_offset = sequence->command_specific_data.reassign_blocks_process_state.lba_offset;
   page_size = sequence->command_specific_data.reassign_blocks_process_state.lba_size;

   for(index = 0; index < page_size; index++)
   {
      sati_get_data_byte(sequence, scsi_io, lba_offset+index, &current_lba_bytes[index]);
   }

   if (page_size == 4)
      set_current_lba(current_lba_bytes, ata_io);
   else
      set_current_long_lba(current_lba_bytes, ata_io);

   status = sati_reassign_blocks_verify_command(sequence, scsi_io, ata_io);
   sequence->command_specific_data.reassign_blocks_process_state.ata_command_sent_for_current_lba++;
   sequence->command_specific_data.reassign_blocks_process_state.ata_command_status = SATI_REASSIGN_BLOCKS_READY_TO_SEND;
   return status;
}
