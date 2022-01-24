#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_9__ {int /*<<< orphan*/  uf_control; } ;
struct TYPE_8__ {scalar_t__ fis_type; } ;
struct TYPE_6__ {TYPE_4__* owning_controller; } ;
struct TYPE_7__ {TYPE_1__ parent; int /*<<< orphan*/  d2h_reg_fis; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_2__ SCIC_SDS_STP_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  TYPE_3__ SATA_FIS_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SATA_FIS_TYPE_REGD2H ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static
SCI_STATUS FUNC7(
   SCIC_SDS_REQUEST_T * request,
   U32                  frame_index
)
{
   SCI_STATUS               status;
   SATA_FIS_HEADER_T      * frame_header;
   U32                    * frame_buffer;
   SCIC_SDS_STP_REQUEST_T * this_request;

   this_request = (SCIC_SDS_STP_REQUEST_T *)request;

   FUNC1((
      FUNC2(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_sds_stp_packet_request_command_phase_await_d2h_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = FUNC6(
      &(this_request->parent.owning_controller->uf_control),
      frame_index,
      (void**) &frame_header
   );

   if (status == SCI_SUCCESS)
   {
      FUNC0(frame_header->fis_type == SATA_FIS_TYPE_REGD2H);

      // Get from the frame buffer the PIO Setup Data, although we don't need
      // any info from this pio setup fis.
      FUNC5(
         &(this_request->parent.owning_controller->uf_control),
         frame_index,
         (void**) &frame_buffer
      );

      FUNC3(
         &this_request->d2h_reg_fis, (U32 *)frame_header, frame_buffer
      );

      // Frame has been decoded return it to the controller
      FUNC4(
         this_request->parent.owning_controller, frame_index
      );
   }

   return status;
}