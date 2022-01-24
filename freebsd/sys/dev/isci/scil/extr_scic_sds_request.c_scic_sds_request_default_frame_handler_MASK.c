#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_5__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_6__ {int /*<<< orphan*/  owning_controller; TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_2__ SCIC_SDS_REQUEST_T ;

/* Variables and functions */
 int SCIC_LOG_OBJECT_SMP_IO_REQUEST ; 
 int SCIC_LOG_OBJECT_SSP_IO_REQUEST ; 
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SCI_STATUS FUNC4(
   SCIC_SDS_REQUEST_T * this_request,
   U32                  frame_index
)
{
   FUNC0((
      FUNC1(this_request),
      (
          SCIC_LOG_OBJECT_SSP_IO_REQUEST
        | SCIC_LOG_OBJECT_STP_IO_REQUEST
        | SCIC_LOG_OBJECT_SMP_IO_REQUEST
      ),
      "SCIC IO Request given unexpected frame %x while in state %d\n",
      frame_index,
      FUNC2(&this_request->parent.state_machine)
   ));

   FUNC3(
      this_request->owning_controller, frame_index);

   return SCI_FAILURE_INVALID_STATE;
}