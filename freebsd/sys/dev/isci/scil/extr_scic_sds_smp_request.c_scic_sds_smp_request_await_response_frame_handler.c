
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_23__ {int state_machine; } ;
struct TYPE_26__ {TYPE_6__ parent; int started_substate_machine; int * response_buffer; } ;
struct TYPE_25__ {scalar_t__ smp_frame_type; scalar_t__ function; } ;
struct TYPE_18__ {int attached_stp_target; scalar_t__ attached_sata_device; } ;
struct TYPE_19__ {TYPE_1__ bits; } ;
struct TYPE_20__ {TYPE_2__ u; } ;
struct TYPE_21__ {TYPE_3__ protocols; } ;
struct TYPE_22__ {TYPE_4__ discover; } ;
struct TYPE_24__ {TYPE_5__ response; } ;
struct TYPE_17__ {int uf_control; } ;
typedef TYPE_7__ SMP_RESPONSE_T ;
typedef TYPE_8__ SMP_RESPONSE_HEADER_T ;
typedef int SMP_RESPONSE_BODY_T ;
typedef int SCI_STATUS ;
typedef TYPE_9__ SCIC_SDS_REQUEST_T ;
typedef TYPE_10__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_SMP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_SDS_SMP_REQUEST_STARTED_SUBSTATE_AWAIT_TC_COMPLETION ;
 int SCI_BASE_REQUEST_STATE_COMPLETED ;
 int SCI_FAILURE_CONTROLLER_SPECIFIC_IO_ERR ;
 int SCI_SUCCESS ;
 int SCU_TASK_DONE_GOOD ;
 int SCU_TASK_DONE_SMP_FRM_TYPE_ERR ;
 scalar_t__ SMP_FRAME_TYPE_RESPONSE ;
 scalar_t__ SMP_FUNCTION_DISCOVER ;
 int sci_base_object_get_logger (TYPE_9__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_controller_release_frame (TYPE_10__*,int ) ;
 TYPE_10__* scic_sds_request_get_controller (TYPE_9__*) ;
 int scic_sds_request_set_status (TYPE_9__*,int ,int ) ;
 int scic_sds_unsolicited_frame_control_get_buffer (int *,int ,void**) ;
 int scic_sds_unsolicited_frame_control_get_header (int *,int ,void**) ;
 int scic_word_copy_with_swap (int *,void*,int) ;

__attribute__((used)) static
SCI_STATUS scic_sds_smp_request_await_response_frame_handler(
   SCIC_SDS_REQUEST_T * this_request,
   U32 frame_index
)
{
   SCI_STATUS status;
   void * frame_header;
   SMP_RESPONSE_HEADER_T * this_frame_header;
   U8 * user_smp_buffer = this_request->response_buffer;



   SCIC_SDS_CONTROLLER_T * controller = scic_sds_request_get_controller(this_request);

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_request),
      SCIC_LOG_OBJECT_SMP_IO_REQUEST,
      "scic_sds_smp_request_await_response_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = scic_sds_unsolicited_frame_control_get_header(
      &(controller->uf_control),
      frame_index,
      &frame_header
   );


   scic_word_copy_with_swap(
      (U32*) user_smp_buffer,
      frame_header,
      sizeof(SMP_RESPONSE_HEADER_T)/sizeof(U32)
   );
   this_frame_header = (SMP_RESPONSE_HEADER_T*) user_smp_buffer;

   if (this_frame_header->smp_frame_type == SMP_FRAME_TYPE_RESPONSE)
   {
      void * smp_response_buffer;

      status = scic_sds_unsolicited_frame_control_get_buffer(
         &(controller->uf_control),
         frame_index,
         &smp_response_buffer
      );

      scic_word_copy_with_swap(
         (U32*) (user_smp_buffer + sizeof(SMP_RESPONSE_HEADER_T)),
         smp_response_buffer,
         sizeof(SMP_RESPONSE_BODY_T)/sizeof(U32)
      );
      if (this_frame_header->function == SMP_FUNCTION_DISCOVER)
      {
          SMP_RESPONSE_T * this_smp_response;

          this_smp_response = (SMP_RESPONSE_T *)user_smp_buffer;





          if (this_smp_response->response.discover.protocols.u.bits.attached_sata_device
           && !this_smp_response->response.discover.protocols.u.bits.attached_stp_target)
          {
              this_smp_response->response.discover.protocols.u.bits.attached_stp_target = 1;

              SCIC_LOG_TRACE((
                  sci_base_object_get_logger(this_request),
                 SCIC_LOG_OBJECT_SMP_IO_REQUEST,
                 "scic_sds_smp_request_await_response_frame_handler(0x%x) Found SATA dev, setting STP bit.\n",
                 this_request
              ));
          }
      }







      scic_sds_request_set_status(
         this_request, SCU_TASK_DONE_GOOD, SCI_SUCCESS
      );

      sci_base_state_machine_change_state(
         &this_request->started_substate_machine,
         SCIC_SDS_SMP_REQUEST_STARTED_SUBSTATE_AWAIT_TC_COMPLETION
      );
   }
   else
   {

      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_request),
         SCIC_LOG_OBJECT_SMP_IO_REQUEST,
         "SCIC SMP Request 0x%08x received unexpected frame %d type 0x%02x\n",
         this_request, frame_index, this_frame_header->smp_frame_type
      ));

     scic_sds_request_set_status(
        this_request,
        SCU_TASK_DONE_SMP_FRM_TYPE_ERR,
        SCI_FAILURE_CONTROLLER_SPECIFIC_IO_ERR
     );

     sci_base_state_machine_change_state(
         &this_request->parent.state_machine,
         SCI_BASE_REQUEST_STATE_COMPLETED
      );
   }

   scic_sds_controller_release_frame(
      controller, frame_index
   );

   return SCI_SUCCESS;
}
