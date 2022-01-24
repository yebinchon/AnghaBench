#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_10__ {int /*<<< orphan*/  uf_control; } ;
struct TYPE_9__ {scalar_t__ fis_type; } ;
struct TYPE_8__ {TYPE_5__* owning_controller; } ;
struct TYPE_7__ {int /*<<< orphan*/  d2h_reg_fis; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_1__ SCIC_SDS_STP_REQUEST_T ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;
typedef  TYPE_3__ SATA_FIS_HEADER_T ;

/* Variables and functions */
 scalar_t__ SATA_FIS_TYPE_REGD2H ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static
SCI_STATUS FUNC6(
   SCIC_SDS_REQUEST_T * this_request,
   U32                  frame_index
)
{
   SCI_STATUS          status;
   SATA_FIS_HEADER_T * frame_header;
   U32               * frame_buffer;

   FUNC0((
      FUNC1(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_sds_stp_pio_request_data_in_await_frame_frame_handler(0x%x, 0x%x) enter\n",
      this_request, frame_index
   ));

   status = FUNC5(
      &this_request->owning_controller->uf_control,
      frame_index,
      (void**) &frame_header
   );

   if (
         (status == SCI_SUCCESS)
      && (frame_header->fis_type == SATA_FIS_TYPE_REGD2H)
      )
   {
      FUNC4(
         &this_request->owning_controller->uf_control,
         frame_index,
         (void**) &frame_buffer
      );

      FUNC2(
         &((SCIC_SDS_STP_REQUEST_T *)this_request)->d2h_reg_fis,
         (U32 *)frame_header,
         frame_buffer
      );
   }

   FUNC3(
      this_request->owning_controller, frame_index);

   return status;
}