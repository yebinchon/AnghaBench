#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* state_handlers; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* complete_io_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef  scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCI_BASE_CONTROLLER_T ;
typedef  TYPE_2__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

SCI_STATUS FUNC3(
   SCI_CONTROLLER_HANDLE_T     controller,
   SCI_REMOTE_DEVICE_HANDLE_T  remote_device,
   SCI_IO_REQUEST_HANDLE_T     io_request
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T*) controller;

   FUNC0((
      FUNC1(controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_controller_complete_io(0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request
   ));

   return fw_controller->state_handlers->complete_io_handler(
             (SCI_BASE_CONTROLLER_T*) controller,
             (SCI_BASE_REMOTE_DEVICE_T*) remote_device,
             (SCI_BASE_REQUEST_T*) io_request
          );
}