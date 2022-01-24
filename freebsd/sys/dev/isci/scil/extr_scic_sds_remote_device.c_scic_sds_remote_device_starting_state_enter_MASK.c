#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_REMOTE_DEVICE_NOT_READY_START_REQUESTED ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_STARTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scic_sds_remote_device_state_handler_table ; 

__attribute__((used)) static
void FUNC3(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T    * the_controller;
   SCIC_SDS_REMOTE_DEVICE_T * this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   the_controller = FUNC2(this_device);

   FUNC0(
      this_device,
      scic_sds_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_STARTING
   );

   FUNC1(
      the_controller,
      this_device,
      SCIC_REMOTE_DEVICE_NOT_READY_START_REQUESTED
   );
}