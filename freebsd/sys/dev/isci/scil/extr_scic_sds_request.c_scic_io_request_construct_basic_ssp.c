
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int state_machine; } ;
struct TYPE_9__ {TYPE_1__ parent; int protocol; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int SCIC_LOG_OBJECT_SSP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_SSP_PROTOCOL ;
 int SCI_BASE_REQUEST_STATE_CONSTRUCTED ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_cb_io_request_get_data_direction (void*) ;
 int scic_cb_io_request_get_transfer_length (void*) ;
 int scic_sds_io_request_build_ssp_command_iu (TYPE_2__*) ;
 void* scic_sds_request_get_user_request (TYPE_2__*) ;
 int scic_sds_request_initialize_state_logging (TYPE_2__*) ;
 int scu_ssp_io_request_construct_task_context (TYPE_2__*,int ,int ) ;

SCI_STATUS scic_io_request_construct_basic_ssp(
   SCI_IO_REQUEST_HANDLE_T scic_io_request
)
{
   void *os_handle;
   SCIC_SDS_REQUEST_T *this_request;
   this_request = (SCIC_SDS_REQUEST_T *)scic_io_request;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_request),
      SCIC_LOG_OBJECT_SSP_IO_REQUEST,
      "scic_io_request_construct_basic_ssp(0x%x) enter\n",
      this_request
   ));

   this_request->protocol = SCIC_SSP_PROTOCOL;

   os_handle = scic_sds_request_get_user_request(this_request);

   scu_ssp_io_request_construct_task_context(
      this_request,
      scic_cb_io_request_get_data_direction(os_handle),
      scic_cb_io_request_get_transfer_length(os_handle)
   );


   scic_sds_io_request_build_ssp_command_iu(this_request);

   scic_sds_request_initialize_state_logging(this_request);

   sci_base_state_machine_change_state(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_CONSTRUCTED
   );

   return SCI_SUCCESS;
}
