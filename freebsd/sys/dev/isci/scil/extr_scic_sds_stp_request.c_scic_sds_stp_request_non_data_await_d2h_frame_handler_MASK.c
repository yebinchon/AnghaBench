#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_8__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_12__ {TYPE_1__ parent; TYPE_3__* owning_controller; } ;
struct TYPE_11__ {int fis_type; } ;
struct TYPE_10__ {int /*<<< orphan*/  uf_control; } ;
struct TYPE_9__ {TYPE_5__ parent; int /*<<< orphan*/  d2h_reg_fis; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_2__ SCIC_SDS_STP_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REQUEST_T ;
typedef  TYPE_3__ SCIC_SDS_CONTROLLER_T ;
typedef  TYPE_4__ SATA_FIS_HEADER_T ;

/* Variables and functions */
#define  SATA_FIS_TYPE_REGD2H 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_COMPLETED ; 
 int /*<<< orphan*/  SCI_FAILURE_IO_RESPONSE_VALID ; 
 int /*<<< orphan*/  SCI_FAILURE_PROTOCOL_VIOLATION ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  SCU_TASK_DONE_CHECK_RESPONSE ; 
 int /*<<< orphan*/  SCU_TASK_DONE_UNEXP_FIS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static
SCI_STATUS FUNC10(
   SCIC_SDS_REQUEST_T * request,
   U32                  frame_index
)
{
   SCI_STATUS               status;
   SATA_FIS_HEADER_T      * frame_header;
   U32                    * frame_buffer;
   SCIC_SDS_STP_REQUEST_T * this_request = (SCIC_SDS_STP_REQUEST_T *)request;

   // Save off the controller, so that we do not touch the request after it
   //  is completed.
   SCIC_SDS_CONTROLLER_T  * owning_controller = this_request->parent.owning_controller;

   FUNC1((
      FUNC3(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_sds_stp_request_non_data_await_d2h_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = FUNC9(
               &(owning_controller->uf_control),
               frame_index,
               (void**) &frame_header
            );

   if (status == SCI_SUCCESS)
   {
      switch (frame_header->fis_type)
      {
      case SATA_FIS_TYPE_REGD2H:
         FUNC8(
            &(owning_controller->uf_control),
            frame_index,
            (void**) &frame_buffer
         );

         FUNC5(
            &this_request->d2h_reg_fis, (U32 *)frame_header, frame_buffer
         );

         // The command has completed with error
         FUNC7(
            &this_request->parent,
            SCU_TASK_DONE_CHECK_RESPONSE,
            SCI_FAILURE_IO_RESPONSE_VALID
         );
         break;

      default:
         FUNC2((
            FUNC3(this_request),
            SCIC_LOG_OBJECT_STP_IO_REQUEST,
            "IO Request:0x%x Frame Id:%d protocol violation occurred\n",
            this_request, frame_index
         ));

         FUNC7(
            &this_request->parent,
            SCU_TASK_DONE_UNEXP_FIS,
            SCI_FAILURE_PROTOCOL_VIOLATION
         );
         break;
      }

      FUNC4(
         &this_request->parent.parent.state_machine,
         SCI_BASE_REQUEST_STATE_COMPLETED
      );

      // Frame has been decoded return it to the controller
      FUNC6(
         owning_controller, frame_index
      );
   }
   else
   {
      FUNC0((
         FUNC3(this_request),
         SCIC_LOG_OBJECT_STP_IO_REQUEST,
         "SCIC IO Request 0x%x could not get frame header for frame index %d, status %x\n",
         this_request, frame_index, status
      ));
   }

   return status;
}