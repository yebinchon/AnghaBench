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

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_INITIAL ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scic_sds_remote_device_state_handler_table ; 

__attribute__((used)) static
void FUNC3(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   FUNC0(
      this_device,
      scic_sds_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_INITIAL
   );

   // Initial state is a transitional state to the stopped state
   FUNC1(
      FUNC2(this_device),
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
   );
}