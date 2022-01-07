
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_3__ {int current_mode_page_processed; int mode_page_offset; int size_of_data_processed; } ;
typedef int SATI_STATUS ;
typedef TYPE_1__ SATI_MODE_SELECT_PROCESSING_STATE_T ;


 int SATI_COMPLETE ;
 int SATI_FAILURE_CHECK_RESPONSE_DATA ;
 int TRUE ;

__attribute__((used)) static
SATI_STATUS sati_mode_select_process_mode_page_disconnect_reconnect(
   SATI_MODE_SELECT_PROCESSING_STATE_T * mode_select_process_state,
   U32 page_size
   )
{
   SATI_STATUS status = SATI_FAILURE_CHECK_RESPONSE_DATA;



   {
      mode_select_process_state->size_of_data_processed += page_size;
      mode_select_process_state->mode_page_offset += page_size;
      mode_select_process_state->current_mode_page_processed = TRUE;
   }


   status = SATI_COMPLETE;

   return status;
}
