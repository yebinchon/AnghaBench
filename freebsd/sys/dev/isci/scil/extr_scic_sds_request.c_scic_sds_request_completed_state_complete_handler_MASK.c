#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_5__ {scalar_t__ was_tag_assigned_by_user; scalar_t__ saved_rx_frame_index; TYPE_1__ parent; int /*<<< orphan*/  owning_controller; int /*<<< orphan*/  io_tag; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_FINAL ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 scalar_t__ SCU_INVALID_FRAME_INDEX ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCI_BASE_REQUEST_T *request
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)request;

   if (this_request->was_tag_assigned_by_user != TRUE)
   {
      FUNC1(
         this_request->owning_controller, this_request->io_tag
      );
   }

   if (this_request->saved_rx_frame_index != SCU_INVALID_FRAME_INDEX)
   {
      FUNC2(
         this_request->owning_controller, this_request->saved_rx_frame_index);
   }

   FUNC0(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_FINAL
   );

   FUNC3(this_request);

   return SCI_SUCCESS;
}