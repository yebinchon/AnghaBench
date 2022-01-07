
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int state_machine; } ;
struct TYPE_15__ {TYPE_1__ parent; } ;
struct TYPE_13__ {int (* scic_cb_passthru_get_transfer_length ) (TYPE_4__*) ;int (* scic_cb_passthru_get_data_direction ) (TYPE_4__*) ;} ;
struct TYPE_14__ {TYPE_2__ common_callbacks; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_3__ SCIC_SSP_PASSTHRU_REQUEST_CALLBACKS_T ;
typedef TYPE_4__ SCIC_SDS_REQUEST_T ;


 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_BASE_REQUEST_STATE_CONSTRUCTED ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (void*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ scic_sds_io_request_build_ssp_command_iu_pass_through (TYPE_4__*,TYPE_3__*) ;
 int scic_sds_request_initialize_state_logging (TYPE_4__*) ;
 int scu_ssp_io_request_construct_task_context (TYPE_4__*,int ,int ) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;

SCI_STATUS scic_io_request_construct_ssp_pass_through (
   void * scic_io_request,
   SCIC_SSP_PASSTHRU_REQUEST_CALLBACKS_T *ssp_passthru_cb
)
{
   SCI_STATUS status = SCI_SUCCESS;
   SCIC_SDS_REQUEST_T * this_request;

   this_request = (SCIC_SDS_REQUEST_T * )scic_io_request;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(scic_io_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_io_request_construct_ssp_pass_through(0x%x) enter\n",
      scic_io_request
   ));


   scu_ssp_io_request_construct_task_context(
      this_request,
      ssp_passthru_cb->common_callbacks.scic_cb_passthru_get_data_direction (this_request),
      ssp_passthru_cb->common_callbacks.scic_cb_passthru_get_transfer_length(this_request)
   );


   status = scic_sds_io_request_build_ssp_command_iu_pass_through (
               this_request,
               ssp_passthru_cb
            );
   if (status != SCI_SUCCESS)
   {
      return status;
   }


   scic_sds_request_initialize_state_logging(this_request);

   sci_base_state_machine_change_state(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_CONSTRUCTED
   );

   return status;
}
