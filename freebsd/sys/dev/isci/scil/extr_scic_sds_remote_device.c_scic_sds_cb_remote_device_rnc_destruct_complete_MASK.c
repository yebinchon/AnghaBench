#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ started_request_count; } ;
typedef  TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static
void FUNC3(
   void * user_parameter
)
{
   SCIC_SDS_REMOTE_DEVICE_T * this_device;
   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)user_parameter;

   FUNC0(this_device->started_request_count == 0);

   FUNC1(
      FUNC2(this_device),
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
   );
}