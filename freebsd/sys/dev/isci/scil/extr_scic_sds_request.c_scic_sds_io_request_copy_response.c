
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {int user_request; scalar_t__ response_buffer; } ;
struct TYPE_4__ {int data; int response_data_length; } ;
typedef TYPE_1__ SCI_SSP_RESPONSE_IU_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int MIN (int ,int ) ;
 int memcpy (void*,int ,int ) ;
 int sci_ssp_get_response_data_length (int ) ;
 void* scic_cb_ssp_task_request_get_response_data_address (int ) ;
 int scic_cb_ssp_task_request_get_response_data_length (int ) ;

void scic_sds_io_request_copy_response(
   SCIC_SDS_REQUEST_T *this_request
)
{
   void * response_buffer;
   U32 user_response_length;
   U32 core_response_length;
   SCI_SSP_RESPONSE_IU_T * ssp_response;

   ssp_response = (SCI_SSP_RESPONSE_IU_T *)this_request->response_buffer;

   response_buffer = scic_cb_ssp_task_request_get_response_data_address(
                        this_request->user_request
                     );

   user_response_length = scic_cb_ssp_task_request_get_response_data_length(
                        this_request->user_request
                     );

   core_response_length = sci_ssp_get_response_data_length(
                           ssp_response->response_data_length
                     );

   user_response_length = MIN(user_response_length, core_response_length);

   memcpy(response_buffer, ssp_response->data, user_response_length);
}
