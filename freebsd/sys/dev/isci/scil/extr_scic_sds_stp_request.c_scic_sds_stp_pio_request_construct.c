
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_13__ {int parent; } ;
struct TYPE_16__ {TYPE_4__ parent; int started_substate_machine; TYPE_7__* task_context_buffer; } ;
struct TYPE_15__ {int sgl_pair_ab; } ;
struct TYPE_10__ {int * sgl_pair; int sgl_set; scalar_t__ sgl_offset; } ;
struct TYPE_11__ {TYPE_1__ request_current; scalar_t__ sgl_pair_index; scalar_t__ sat_protocol; scalar_t__ ending_status; scalar_t__ ending_error; scalar_t__ current_transfer_bytes; } ;
struct TYPE_12__ {TYPE_2__ pio; } ;
struct TYPE_14__ {TYPE_8__ parent; TYPE_3__ type; } ;
typedef int SCI_STATUS ;
typedef TYPE_5__ SCIC_SDS_STP_REQUEST_T ;
typedef int SCIC_SDS_REQUEST_T ;
typedef scalar_t__ BOOL ;


 scalar_t__ SAT_PROTOCOL_PIO_DATA_OUT ;
 int SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_H2D_COMPLETION_SUBSTATE ;
 int SCI_SUCCESS ;
 int SCU_SGL_ELEMENT_PAIR_A ;
 int sci_base_state_machine_construct (int *,int *,int ,int ) ;
 int scic_sds_request_build_sgl (TYPE_8__*) ;
 int scic_sds_stp_non_ncq_request_construct (TYPE_8__*) ;
 int scic_sds_stp_request_started_pio_substate_table ;
 int scu_stp_raw_request_construct_task_context (TYPE_5__*,TYPE_7__*) ;

SCI_STATUS scic_sds_stp_pio_request_construct(
   SCIC_SDS_REQUEST_T * scic_io_request,
   U8 sat_protocol,
   BOOL copy_rx_frame
)
{
   SCIC_SDS_STP_REQUEST_T * this_request;

   this_request = (SCIC_SDS_STP_REQUEST_T *)scic_io_request;

   scic_sds_stp_non_ncq_request_construct(&this_request->parent);

   scu_stp_raw_request_construct_task_context(
      this_request, this_request->parent.task_context_buffer
   );

   this_request->type.pio.current_transfer_bytes = 0;
   this_request->type.pio.ending_error = 0;
   this_request->type.pio.ending_status = 0;

   this_request->type.pio.request_current.sgl_offset = 0;
   this_request->type.pio.request_current.sgl_set = SCU_SGL_ELEMENT_PAIR_A;
   this_request->type.pio.sat_protocol = sat_protocol;
   this_request->type.pio.sgl_pair_index = 0;

   if ((copy_rx_frame) || (sat_protocol == SAT_PROTOCOL_PIO_DATA_OUT))
   {
      scic_sds_request_build_sgl(&this_request->parent);


      this_request->type.pio.request_current.sgl_pair =
         &this_request->parent.task_context_buffer->sgl_pair_ab;
   }
   else
   {

      this_request->type.pio.request_current.sgl_pair = ((void*)0);
   }

   sci_base_state_machine_construct(
      &this_request->parent.started_substate_machine,
      &this_request->parent.parent.parent,
      scic_sds_stp_request_started_pio_substate_table,
      SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_H2D_COMPLETION_SUBSTATE
   );

   return SCI_SUCCESS;
}
