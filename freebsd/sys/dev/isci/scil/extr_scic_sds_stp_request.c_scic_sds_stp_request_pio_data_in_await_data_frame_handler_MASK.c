#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_15__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_19__ {TYPE_4__ parent; int /*<<< orphan*/  started_substate_machine; int /*<<< orphan*/  saved_rx_frame_index; TYPE_6__* owning_controller; } ;
struct TYPE_18__ {scalar_t__ fis_type; } ;
struct TYPE_17__ {int /*<<< orphan*/  uf_control; } ;
struct TYPE_12__ {int /*<<< orphan*/ * sgl_pair; } ;
struct TYPE_13__ {scalar_t__ pio_transfer_bytes; int ending_status; TYPE_1__ request_current; } ;
struct TYPE_14__ {TYPE_2__ pio; } ;
struct TYPE_16__ {TYPE_9__ parent; TYPE_3__ type; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_5__ SCIC_SDS_STP_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  TYPE_6__ SCIC_SDS_CONTROLLER_T ;
typedef  TYPE_7__ SATA_FIS_HEADER_T ;
typedef  int /*<<< orphan*/  SATA_FIS_DATA_T ;

/* Variables and functions */
 int ATA_STATUS_REG_BSY_BIT ; 
 scalar_t__ SATA_FIS_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_FRAME_SUBSTATE ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_COMPLETED ; 
 int /*<<< orphan*/  SCI_FAILURE_IO_REQUIRES_SCSI_ABORT ; 
 int /*<<< orphan*/  SCI_FAILURE_IO_RESPONSE_VALID ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  SCU_TASK_DONE_CHECK_RESPONSE ; 
 int /*<<< orphan*/  SCU_TASK_DONE_GOOD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static
SCI_STATUS FUNC9(
   SCIC_SDS_REQUEST_T * request,
   U32                  frame_index
)
{
   SCI_STATUS               status;
   SATA_FIS_HEADER_T      * frame_header;
   SATA_FIS_DATA_T        * frame_buffer;
   SCIC_SDS_STP_REQUEST_T * this_request;
   SCIC_SDS_CONTROLLER_T  * owning_controller;

   this_request = (SCIC_SDS_STP_REQUEST_T *)request;

   // Save off the controller, so that we do not touch the request after it
   //  is completed.
   owning_controller = this_request->parent.owning_controller;

   FUNC1((
      FUNC2(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_sds_stp_request_pio_data_in_await_data_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = FUNC8(
      &(owning_controller->uf_control),
      frame_index,
      (void**) &frame_header
   );

   if (status == SCI_SUCCESS)
   {
      if (frame_header->fis_type == SATA_FIS_TYPE_DATA)
      {
         if (this_request->type.pio.request_current.sgl_pair == NULL)
         {
            this_request->parent.saved_rx_frame_index = frame_index;
            this_request->type.pio.pio_transfer_bytes = 0;
         }
         else
         {
            status = FUNC7(
               &(owning_controller->uf_control),
               frame_index,
               (void**) &frame_buffer
            );

            status = FUNC6(this_request, (U8 *)frame_buffer);

            // Frame is decoded return it to the controller
            FUNC4(
               owning_controller,
               frame_index
            );
         }

         // Check for the end of the transfer, are there more bytes remaining
         // for this data transfer
         if (
               (status == SCI_SUCCESS)
            && (this_request->type.pio.pio_transfer_bytes == 0)
            )
         {
            if ((this_request->type.pio.ending_status & ATA_STATUS_REG_BSY_BIT) == 0)
            {
               FUNC5(
                  &this_request->parent,
                  SCU_TASK_DONE_CHECK_RESPONSE,
                  SCI_FAILURE_IO_RESPONSE_VALID
               );

               FUNC3(
                  &this_request->parent.parent.state_machine,
                  SCI_BASE_REQUEST_STATE_COMPLETED
               );
            }
            else
            {
               FUNC3(
                  &this_request->parent.started_substate_machine,
                  SCIC_SDS_STP_REQUEST_STARTED_PIO_AWAIT_FRAME_SUBSTATE
               );
            }
         }
      }
      else
      {
         FUNC0((
            FUNC2(this_request),
            SCIC_LOG_OBJECT_STP_IO_REQUEST,
            "SCIC PIO Request 0x%x received frame %d with fis type 0x%02x when expecting a data fis.\n",
            this_request, frame_index, frame_header->fis_type
         ));

         FUNC5(
            &this_request->parent,
            SCU_TASK_DONE_GOOD,
            SCI_FAILURE_IO_REQUIRES_SCSI_ABORT
         );

         FUNC3(
            &this_request->parent.parent.state_machine,
            SCI_BASE_REQUEST_STATE_COMPLETED
         );

         // Frame is decoded return it to the controller
         FUNC4(
            owning_controller,
            frame_index
         );
      }
   }
   else
   {
      FUNC0((
         FUNC2(this_request),
         SCIC_LOG_OBJECT_STP_IO_REQUEST,
         "SCIC IO Request 0x%x could not get frame header for frame index %d, status %x\n",
         this_request, frame_index, status
      ));
   }

   return status;
}