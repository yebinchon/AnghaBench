
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* U32 ;
struct TYPE_6__ {int current_mode_page_processed; scalar_t__ size_of_data_processed; void* mode_pages_size; void* mode_page_offset; scalar_t__ ata_command_sent_for_cmp; } ;
struct TYPE_5__ {TYPE_2__ process_state; } ;
struct TYPE_7__ {TYPE_1__ command_specific_data; } ;
typedef TYPE_3__ SATI_TRANSLATOR_SEQUENCE_T ;


 int FALSE ;

__attribute__((used)) static
void sati_mode_select_initialize_mode_sel_processing_state(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io,
   U32 data_transfer_length,
   U32 mode_page_offset
   )
{
   sequence->command_specific_data.process_state.ata_command_sent_for_cmp = 0;
   sequence->command_specific_data.process_state.mode_page_offset=mode_page_offset;
   sequence->command_specific_data.process_state.mode_pages_size = data_transfer_length - mode_page_offset;
   sequence->command_specific_data.process_state.size_of_data_processed = 0;
   sequence->command_specific_data.process_state.current_mode_page_processed = FALSE;
}
