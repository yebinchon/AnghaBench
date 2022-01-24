#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_12__ {int /*<<< orphan*/  uf_control; } ;
struct TYPE_11__ {int /*<<< orphan*/  owning_controller; scalar_t__ response_buffer; } ;
struct TYPE_10__ {scalar_t__ frame_type; } ;
struct TYPE_9__ {int data_present; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_1__ SCI_SSP_RESPONSE_IU_T ;
typedef  TYPE_2__ SCI_SSP_FRAME_HEADER_T ;
typedef  TYPE_3__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_SSP_IO_REQUEST ; 
 int /*<<< orphan*/  SCI_FAILURE_CONTROLLER_SPECIFIC_IO_ERR ; 
 scalar_t__ SCI_SAS_RESPONSE_FRAME ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  SCU_TASK_DONE_CHECK_RESPONSE ; 
 int /*<<< orphan*/  SCU_TASK_DONE_GOOD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
SCI_STATUS FUNC8(
   SCIC_SDS_REQUEST_T * this_request,
   U32                  frame_index
)
{
   SCI_STATUS status;
   SCI_SSP_FRAME_HEADER_T *frame_header;

   /// @todo If this is a response frame we must record that we received it
   status = FUNC6(
      &(FUNC3(this_request)->uf_control),
      frame_index,
      (void**) &frame_header
   );

   if (frame_header->frame_type == SCI_SAS_RESPONSE_FRAME)
   {
      SCI_SSP_RESPONSE_IU_T *response_buffer;

      status = FUNC5(
         &(FUNC3(this_request)->uf_control),
         frame_index,
         (void**) &response_buffer
      );

      FUNC7(
         this_request->response_buffer,
         (U32 *)response_buffer,
         sizeof(SCI_SSP_RESPONSE_IU_T)
      );

      response_buffer = (SCI_SSP_RESPONSE_IU_T *)this_request->response_buffer;

      if (
            (response_buffer->data_present == 0x01)
         || (response_buffer->data_present == 0x02)
         )
      {
         FUNC4(
            this_request,
            SCU_TASK_DONE_CHECK_RESPONSE,
            SCI_FAILURE_CONTROLLER_SPECIFIC_IO_ERR
         );
      }
      else
      {
         FUNC4(
            this_request, SCU_TASK_DONE_GOOD, SCI_SUCCESS
         );
      }

   }
   else
   {
      // This was not a response frame why did it get forwarded?
      FUNC0((
         FUNC1(this_request),
         SCIC_LOG_OBJECT_SSP_IO_REQUEST,
         "SCIC IO Request 0x%x received unexpected frame %d type 0x%02x\n",
         this_request, frame_index, frame_header->frame_type
      ));
   }

   // In any case we are done with this frame buffer return it to the
   // controller
   FUNC2(
      this_request->owning_controller, frame_index
   );

   return SCI_SUCCESS;
}