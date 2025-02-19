
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_6__ {int lba_size; int lba_offset; int block_lists_size; int ata_command_status; int current_lba_processed; scalar_t__ size_of_data_processed; scalar_t__ ata_command_sent_for_current_lba; } ;
struct TYPE_7__ {TYPE_1__ reassign_blocks_process_state; } ;
struct TYPE_8__ {int allocation_length; TYPE_2__ command_specific_data; } ;
typedef TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;


 int FALSE ;
 int SATI_REASSIGN_BLOCKS_COMMAND_FAIL ;
 int SCSI_REASSIGN_BLOCKS_LONGLBA_BIT ;
 int SCSI_REASSIGN_BLOCKS_LONGLIST_BIT ;
 int* sati_cb_get_cdb_address (void*) ;
 int sati_get_cdb_byte (int*,int) ;
 int sati_get_data_byte (TYPE_3__*,void*,int,int*) ;

__attribute__((used)) static
void sati_reassign_blocks_initial_processing(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{
   U32 index;
   U8 long_lba_bit;
   U8 long_list_bit;
   U8 lba_offset;
   U8 page_size;
   U32 data_transfer_length;
   U8 header_bytes[4]={0,0,0,0};

   U8 * cdb = sati_cb_get_cdb_address(scsi_io);



   if ((sati_get_cdb_byte(cdb, 1) & SCSI_REASSIGN_BLOCKS_LONGLBA_BIT) == 0)
   {
      long_lba_bit=0;
      page_size = 4;
   }
   else
   {
      long_lba_bit=1;
      page_size = 8;
   }


   if ((sati_get_cdb_byte(cdb, 1) & SCSI_REASSIGN_BLOCKS_LONGLIST_BIT) == 0)
   {
      long_list_bit=0;
   }
   else
   {
      long_list_bit=1;
   }

   sequence->allocation_length = 4;


   for(index = 0; index < 4; index++)
   {
      sati_get_data_byte(sequence, scsi_io, index, &header_bytes[index]);
   }

   lba_offset = 4;

   if (long_list_bit==0)
   {

      data_transfer_length = (header_bytes[2]<<8) + header_bytes[3] + lba_offset;
   }
   else
   {

      data_transfer_length = (header_bytes[0]<<24) + (header_bytes[1]<<16) +
         (header_bytes[2]<<8) + header_bytes[3] + lba_offset;
   }

   sequence->allocation_length = data_transfer_length;


   sequence->command_specific_data.reassign_blocks_process_state.lba_size = page_size;
   sequence->command_specific_data.reassign_blocks_process_state.lba_offset = lba_offset;
   sequence->command_specific_data.reassign_blocks_process_state.ata_command_sent_for_current_lba = 0;
   sequence->command_specific_data.reassign_blocks_process_state.block_lists_size = data_transfer_length - lba_offset;
   sequence->command_specific_data.reassign_blocks_process_state.size_of_data_processed = 0;
   sequence->command_specific_data.reassign_blocks_process_state.current_lba_processed = FALSE;
   sequence->command_specific_data.reassign_blocks_process_state.ata_command_status = SATI_REASSIGN_BLOCKS_COMMAND_FAIL;
}
