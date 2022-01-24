#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
typedef  scalar_t__ U16 ;
struct TYPE_15__ {int /*<<< orphan*/  uf_control; } ;
struct TYPE_14__ {scalar_t__ fis_type; } ;
struct TYPE_13__ {scalar_t__ transfter_count; } ;
struct TYPE_11__ {int /*<<< orphan*/  started_substate_machine; TYPE_7__* owning_controller; } ;
struct TYPE_9__ {scalar_t__ device_preferred_cdb_length; } ;
struct TYPE_10__ {TYPE_1__ packet; } ;
struct TYPE_12__ {TYPE_3__ parent; TYPE_2__ type; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_4__ SCIC_SDS_STP_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  TYPE_5__ SATA_FIS_PIO_SETUP_T ;
typedef  TYPE_6__ SATA_FIS_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SATA_FIS_TYPE_PIO_SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_SDS_STP_PACKET_REQUEST_STARTED_COMMAND_PHASE_AWAIT_TC_COMPLETION_SUBSTATE ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static
SCI_STATUS FUNC8(
   SCIC_SDS_REQUEST_T * request,
   U32                  frame_index
)
{
   SCI_STATUS               status;
   SATA_FIS_HEADER_T      * frame_header;
   U32                    * frame_buffer;
   SCIC_SDS_STP_REQUEST_T * this_request;

   this_request = (SCIC_SDS_STP_REQUEST_T *)request;

   FUNC2((
      FUNC3(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_sds_stp_packet_request_packet_phase_await_pio_setup_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = FUNC7(
      &(this_request->parent.owning_controller->uf_control),
      frame_index,
      (void**) &frame_header
   );

   if (status == SCI_SUCCESS)
   {
      FUNC0(frame_header->fis_type == SATA_FIS_TYPE_PIO_SETUP);

      // Get from the frame buffer the PIO Setup Data, although we don't need
      // any info from this pio setup fis.
      FUNC6(
         &(this_request->parent.owning_controller->uf_control),
         frame_index,
         (void**) &frame_buffer
      );

      // Get the data from the PIO Setup
      // The SCU Hardware returns first word in the frame_header and the rest
      // of the data is in the frame buffer so we need to back up one dword
      this_request->type.packet.device_preferred_cdb_length =
         (U16)((SATA_FIS_PIO_SETUP_T *)(&frame_buffer[-1]))->transfter_count;

      // Frame has been decoded return it to the controller
      FUNC5(
         this_request->parent.owning_controller, frame_index
      );

      FUNC4(
         &this_request->parent.started_substate_machine,
         SCIC_SDS_STP_PACKET_REQUEST_STARTED_COMMAND_PHASE_AWAIT_TC_COMPLETION_SUBSTATE
      );
   }
   else
   {
      FUNC1((
         FUNC3(this_request),
         SCIC_LOG_OBJECT_STP_IO_REQUEST,
         "SCIC IO Request 0x%x could not get frame header for frame index %d, status %x\n",
         this_request, frame_index, status
      ));
   }

   return status;
}