
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int U8 ;
typedef scalar_t__ U32 ;
struct TYPE_13__ {scalar_t__ mode_page_offset; scalar_t__ mode_pages_size; scalar_t__ size_of_data_processed; } ;
struct TYPE_11__ {TYPE_6__ process_state; } ;
struct TYPE_12__ {TYPE_1__ command_specific_data; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int SATI_FAILURE_CHECK_RESPONSE_DATA ;






 int SCSI_MODE_SENSE_PAGE_CODE_ENABLE ;
 int sati_get_data_byte (TYPE_2__*,void*,scalar_t__,int*) ;
 scalar_t__ sati_mode_select_get_mode_page_size (int) ;
 int sati_mode_select_process_mode_page_caching (TYPE_2__*,void*,void*,scalar_t__) ;
 int sati_mode_select_process_mode_page_control (TYPE_2__*,void*,void*,scalar_t__) ;
 int sati_mode_select_process_mode_page_disconnect_reconnect (TYPE_6__*,scalar_t__) ;
 int sati_mode_select_process_mode_page_informational_exception_control (TYPE_2__*,void*,void*,scalar_t__) ;
 int sati_mode_select_process_mode_page_power_condition (TYPE_2__*,void*,void*,scalar_t__) ;
 int sati_mode_select_process_mode_page_read_write_error_recovery (TYPE_2__*,void*,scalar_t__) ;

__attribute__((used)) static
SATI_STATUS sati_mode_select_process_mode_page(
   SATI_TRANSLATOR_SEQUENCE_T* sequence,
   void * scsi_io,
   void * ata_io
)
{
   SATI_STATUS status = SATI_FAILURE_CHECK_RESPONSE_DATA;

   U8 page_code;
   U32 page_size = 0;
   U32 size_of_data_to_be_processed;

   U8 page_code_byte;
   U32 mode_page_offset;

   mode_page_offset = sequence->command_specific_data.process_state.mode_page_offset;

   sati_get_data_byte(sequence, scsi_io, mode_page_offset, &page_code_byte);


   if(sequence->command_specific_data.process_state.mode_pages_size >
      sequence->command_specific_data.process_state.size_of_data_processed)
   {

      page_code = page_code_byte & SCSI_MODE_SENSE_PAGE_CODE_ENABLE;
      page_size = sati_mode_select_get_mode_page_size(page_code);
      size_of_data_to_be_processed = sequence->command_specific_data.process_state.mode_pages_size
         - sequence->command_specific_data.process_state.size_of_data_processed;

      if( page_size == 0 )
      {
         status = SATI_FAILURE_CHECK_RESPONSE_DATA;
      }
      else
      {

         switch(page_code)
         {
         case 128:
            status = sati_mode_select_process_mode_page_read_write_error_recovery(
                        sequence,
                        scsi_io,
                        page_size
                     );
            break;

         case 131:
            status = sati_mode_select_process_mode_page_disconnect_reconnect(
                        &sequence->command_specific_data.process_state,
                        page_size
                     );
            break;

         case 133:
            status = sati_mode_select_process_mode_page_caching(
                        sequence,
                        scsi_io,
                        ata_io,
                        page_size
                     );
            break;

         case 132:
            status = sati_mode_select_process_mode_page_control(
                        sequence,
                        scsi_io,
                        ata_io,
                        page_size
                     );
            break;

         case 130:
            status = sati_mode_select_process_mode_page_informational_exception_control(
                        sequence,
                        scsi_io,
                        ata_io,
                        page_size
                     );
            break;

         case 129:
            status = sati_mode_select_process_mode_page_power_condition(
                        sequence,
                        scsi_io,
                        ata_io,
                        page_size
                     );

            break;

         default:
            break;
         }

      }
   }

   return status;
}
