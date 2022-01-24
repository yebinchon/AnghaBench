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
typedef  int /*<<< orphan*/  SCI_TASK_STATUS ;
typedef  int /*<<< orphan*/  SCI_TASK_REQUEST_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_REMOTE_DEVICE_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(SCI_CONTROLLER_HANDLE_T controller,
    SCI_REMOTE_DEVICE_HANDLE_T remote_device,
    SCI_TASK_REQUEST_HANDLE_T task_request, SCI_TASK_STATUS completion_status)
{

	FUNC1(controller, remote_device, task_request);
	FUNC0(controller, remote_device, task_request,
	    completion_status);
}