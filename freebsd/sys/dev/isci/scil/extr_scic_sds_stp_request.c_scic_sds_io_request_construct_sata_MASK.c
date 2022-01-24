#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int U8 ;
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_13__ {int /*<<< orphan*/  state_machine; int /*<<< orphan*/  parent; } ;
struct TYPE_14__ {int sat_protocol; TYPE_1__ parent; int /*<<< orphan*/  started_substate_machine; int /*<<< orphan*/  protocol; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_IO_REQUEST_DATA_DIRECTION ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  SAT_PROTOCOL_ATA_HARD_RESET 145 
#define  SAT_PROTOCOL_DEVICE_DIAGNOSTIC 144 
#define  SAT_PROTOCOL_DEVICE_RESET 143 
#define  SAT_PROTOCOL_DMA 142 
#define  SAT_PROTOCOL_DMA_QUEUED 141 
#define  SAT_PROTOCOL_FPDMA 140 
#define  SAT_PROTOCOL_NON_DATA 139 
#define  SAT_PROTOCOL_PACKET_DMA_DATA_IN 138 
#define  SAT_PROTOCOL_PACKET_DMA_DATA_OUT 137 
#define  SAT_PROTOCOL_PACKET_NON_DATA 136 
#define  SAT_PROTOCOL_PACKET_PIO_DATA_IN 135 
#define  SAT_PROTOCOL_PACKET_PIO_DATA_OUT 134 
#define  SAT_PROTOCOL_PIO_DATA_IN 133 
#define  SAT_PROTOCOL_PIO_DATA_OUT 132 
#define  SAT_PROTOCOL_RETURN_RESPONSE_INFO 131 
#define  SAT_PROTOCOL_SOFT_RESET 130 
#define  SAT_PROTOCOL_UDMA_DATA_IN 129 
#define  SAT_PROTOCOL_UDMA_DATA_OUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  SCIC_SDS_STP_REQUEST_STARTED_UDMA_AWAIT_TC_COMPLETION_SUBSTATE ; 
 int /*<<< orphan*/  SCIC_STP_PROTOCOL ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_CONSTRUCTED ; 
 scalar_t__ SCI_FAILURE ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  SCU_TASK_TYPE_DMA_IN ; 
 int /*<<< orphan*/  SCU_TASK_TYPE_FPDMAQ_READ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scic_sds_stp_request_started_udma_substate_table ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 

SCI_STATUS FUNC12(
   SCIC_SDS_REQUEST_T          * this_request,
   U8                            sat_protocol,
   U32                           transfer_length,
   SCI_IO_REQUEST_DATA_DIRECTION data_direction,
   BOOL                          copy_rx_frame,
   BOOL                          do_translate_sgl
)
{
   SCI_STATUS  status = SCI_SUCCESS;

   this_request->protocol = SCIC_STP_PROTOCOL;

   this_request->sat_protocol = sat_protocol;

   switch (sat_protocol)
   {
   case SAT_PROTOCOL_FPDMA:
      FUNC8(
         this_request,
         SCU_TASK_TYPE_FPDMAQ_READ,
         transfer_length,
         data_direction
      );

      // Copy over the SGL elements
      if (do_translate_sgl == TRUE)
         FUNC4(this_request);
   break;

   case SAT_PROTOCOL_UDMA_DATA_IN:
   case SAT_PROTOCOL_UDMA_DATA_OUT:
      FUNC7(this_request);

      FUNC8(
         this_request, SCU_TASK_TYPE_DMA_IN, transfer_length, data_direction
      );

      // Copy over the SGL elements
      if (do_translate_sgl == TRUE)
         FUNC4(this_request);

      FUNC3(
         &this_request->started_substate_machine,
         &this_request->parent.parent,
         scic_sds_stp_request_started_udma_substate_table,
         SCIC_SDS_STP_REQUEST_STARTED_UDMA_AWAIT_TC_COMPLETION_SUBSTATE
      );
   break;

   case SAT_PROTOCOL_PIO_DATA_IN:
   case SAT_PROTOCOL_PIO_DATA_OUT:
      status = FUNC10(
                  this_request, sat_protocol, copy_rx_frame);
   break;

   case SAT_PROTOCOL_ATA_HARD_RESET:
   case SAT_PROTOCOL_SOFT_RESET:
      status = FUNC11(this_request);
   break;

   case SAT_PROTOCOL_NON_DATA:
      status = FUNC6(this_request);
   break;

#if !defined(DISABLE_ATAPI)
   case SAT_PROTOCOL_PACKET_NON_DATA:
   case SAT_PROTOCOL_PACKET_DMA_DATA_IN:
   case SAT_PROTOCOL_PACKET_DMA_DATA_OUT:
   case SAT_PROTOCOL_PACKET_PIO_DATA_IN:
   case SAT_PROTOCOL_PACKET_PIO_DATA_OUT:
      status = FUNC9(this_request);
      if (do_translate_sgl == TRUE)
         FUNC4(this_request);
   break;
#endif

   case SAT_PROTOCOL_DMA_QUEUED:
   case SAT_PROTOCOL_DMA:
   case SAT_PROTOCOL_DEVICE_DIAGNOSTIC:
   case SAT_PROTOCOL_DEVICE_RESET:
   case SAT_PROTOCOL_RETURN_RESPONSE_INFO:
   default:
      FUNC0((
         FUNC1(this_request),
         SCIC_LOG_OBJECT_STP_IO_REQUEST,
         "SCIC IO Request 0x%x received un-handled SAT Protocol %d.\n",
         this_request, sat_protocol
      ));

      status = SCI_FAILURE;
   break;
   }

   if (status == SCI_SUCCESS)
   {
      FUNC5(this_request);

      FUNC2(
         &this_request->parent.state_machine,
         SCI_BASE_REQUEST_STATE_CONSTRUCTED
      );
   }

   return status;
}