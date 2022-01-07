
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_13__ {int state_machine; int parent; } ;
struct TYPE_14__ {int sat_protocol; TYPE_1__ parent; int started_substate_machine; int protocol; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_IO_REQUEST_DATA_DIRECTION ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;
typedef int BOOL ;
 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_SDS_STP_REQUEST_STARTED_UDMA_AWAIT_TC_COMPLETION_SUBSTATE ;
 int SCIC_STP_PROTOCOL ;
 int SCI_BASE_REQUEST_STATE_CONSTRUCTED ;
 scalar_t__ SCI_FAILURE ;
 scalar_t__ SCI_SUCCESS ;
 int SCU_TASK_TYPE_DMA_IN ;
 int SCU_TASK_TYPE_FPDMAQ_READ ;
 int TRUE ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_construct (int *,int *,int ,int ) ;
 int scic_sds_request_build_sgl (TYPE_2__*) ;
 int scic_sds_request_initialize_state_logging (TYPE_2__*) ;
 scalar_t__ scic_sds_stp_non_data_request_construct (TYPE_2__*) ;
 int scic_sds_stp_non_ncq_request_construct (TYPE_2__*) ;
 int scic_sds_stp_optimized_request_construct (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ scic_sds_stp_packet_request_construct (TYPE_2__*) ;
 scalar_t__ scic_sds_stp_pio_request_construct (TYPE_2__*,int,int ) ;
 int scic_sds_stp_request_started_udma_substate_table ;
 scalar_t__ scic_sds_stp_soft_reset_request_construct (TYPE_2__*) ;

SCI_STATUS scic_sds_io_request_construct_sata(
   SCIC_SDS_REQUEST_T * this_request,
   U8 sat_protocol,
   U32 transfer_length,
   SCI_IO_REQUEST_DATA_DIRECTION data_direction,
   BOOL copy_rx_frame,
   BOOL do_translate_sgl
)
{
   SCI_STATUS status = SCI_SUCCESS;

   this_request->protocol = SCIC_STP_PROTOCOL;

   this_request->sat_protocol = sat_protocol;

   switch (sat_protocol)
   {
   case 140:
      scic_sds_stp_optimized_request_construct(
         this_request,
         SCU_TASK_TYPE_FPDMAQ_READ,
         transfer_length,
         data_direction
      );


      if (do_translate_sgl == TRUE)
         scic_sds_request_build_sgl(this_request);
   break;

   case 129:
   case 128:
      scic_sds_stp_non_ncq_request_construct(this_request);

      scic_sds_stp_optimized_request_construct(
         this_request, SCU_TASK_TYPE_DMA_IN, transfer_length, data_direction
      );


      if (do_translate_sgl == TRUE)
         scic_sds_request_build_sgl(this_request);

      sci_base_state_machine_construct(
         &this_request->started_substate_machine,
         &this_request->parent.parent,
         scic_sds_stp_request_started_udma_substate_table,
         SCIC_SDS_STP_REQUEST_STARTED_UDMA_AWAIT_TC_COMPLETION_SUBSTATE
      );
   break;

   case 133:
   case 132:
      status = scic_sds_stp_pio_request_construct(
                  this_request, sat_protocol, copy_rx_frame);
   break;

   case 145:
   case 130:
      status = scic_sds_stp_soft_reset_request_construct(this_request);
   break;

   case 139:
      status = scic_sds_stp_non_data_request_construct(this_request);
   break;


   case 136:
   case 138:
   case 137:
   case 135:
   case 134:
      status = scic_sds_stp_packet_request_construct(this_request);
      if (do_translate_sgl == TRUE)
         scic_sds_request_build_sgl(this_request);
   break;


   case 141:
   case 142:
   case 144:
   case 143:
   case 131:
   default:
      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_request),
         SCIC_LOG_OBJECT_STP_IO_REQUEST,
         "SCIC IO Request 0x%x received un-handled SAT Protocol %d.\n",
         this_request, sat_protocol
      ));

      status = SCI_FAILURE;
   break;
   }

   if (status == SCI_SUCCESS)
   {
      scic_sds_request_initialize_state_logging(this_request);

      sci_base_state_machine_change_state(
         &this_request->parent.state_machine,
         SCI_BASE_REQUEST_STATE_CONSTRUCTED
      );
   }

   return status;
}
