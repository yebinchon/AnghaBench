#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_6__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_7__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ; 
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ; 
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

SCI_STATUS FUNC5(
   SCIC_SDS_REMOTE_DEVICE_T *this_device,
   U32                       frame_index
)
{
   FUNC0((
      FUNC1(this_device),
      SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
      "SCIC Remote Device requested to handle frame %x while in wrong state %d\n",
      frame_index,
      FUNC2(&this_device->parent.state_machine)
   ));

   // Return the frame back to the controller
   FUNC3(
      FUNC4(this_device), frame_index
   );

   return SCI_FAILURE_INVALID_STATE;
}