#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ started_request_count; int /*<<< orphan*/  rnc; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_STOPPING ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scic_sds_cb_remote_device_rnc_destruct_complete ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

SCI_STATUS FUNC4(
   SCI_BASE_REMOTE_DEVICE_T *device
)
{
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;
   SCI_STATUS                status      = SCI_SUCCESS;

   // Request the parent state machine to transition to the stopping state
   FUNC0(
      FUNC1(this_device),
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPING
   );

   if (this_device->started_request_count == 0)
   {
      FUNC3(
         this_device->rnc,
         scic_sds_cb_remote_device_rnc_destruct_complete,
         this_device
      );
   }
   else
      status = FUNC2(this_device);

   return status;
}