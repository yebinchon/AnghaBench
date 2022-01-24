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
struct TYPE_6__ {TYPE_1__* state_handlers; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* start_complete_handler ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_REMOTE_DEVICE_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC4(
   SCI_CONTROLLER_HANDLE_T    controller,
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_STATUS                 completion_status
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                      FUNC2(remote_device);

   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
      "scic_cb_remote_device_start_complete(0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, completion_status
   ));

   fw_device->state_handlers->start_complete_handler(
      fw_device, completion_status
   );
}