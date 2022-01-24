#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct TYPE_6__ {int /*<<< orphan*/  remote_device_handle; } ;
struct ISCI_TASK_REQUEST {int /*<<< orphan*/  sci_object; union ccb* ccb; TYPE_3__ parent; } ;
struct ISCI_REQUEST {int dummy; } ;
struct ISCI_REMOTE_DEVICE {scalar_t__ is_resetting; int /*<<< orphan*/  sci_object; int /*<<< orphan*/  index; TYPE_2__* domain; int /*<<< orphan*/  pending_device_reset_element; } ;
struct ISCI_CONTROLLER {int /*<<< orphan*/  scif_controller_handle; int /*<<< orphan*/  request_pool; int /*<<< orphan*/  index; int /*<<< orphan*/  pending_device_reset_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; struct ISCI_CONTROLLER* controller; } ;
typedef  int /*<<< orphan*/  SCI_TASK_STATUS ;
typedef  scalar_t__ SCI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  CAM_STATUS_MASK ; 
 int /*<<< orphan*/  SCI_CONTROLLER_INVALID_IO_TAG ; 
 scalar_t__ SCI_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ISCI_REQUEST*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

void
FUNC8(struct ISCI_REMOTE_DEVICE *remote_device,
    union ccb *ccb)
{
	struct ISCI_CONTROLLER *controller = remote_device->domain->controller;
	struct ISCI_REQUEST *request;
	struct ISCI_TASK_REQUEST *task_request;
	SCI_STATUS status;

	if (remote_device->is_resetting == TRUE) {
		/* device is already being reset, so return immediately */
		return;
	}

	if (FUNC3(controller->request_pool)) {
		/* No requests are available in our request pool.  If this reset is tied
		 *  to a CCB, ask CAM to requeue it.  Otherwise, we need to put it on our
		 *  pending device reset list, so that the reset will occur when a request
		 *  frees up.
		 */
		if (ccb == NULL)
			FUNC2(
			    &controller->pending_device_reset_list,
			    &remote_device->pending_device_reset_element);
		else {
			ccb->ccb_h.status &= ~CAM_STATUS_MASK;
			ccb->ccb_h.status |= CAM_REQUEUE_REQ;
			FUNC7(ccb);
		}
		return;
	}

	FUNC0(0, "ISCI",
	    "Sending reset to device on controller %d domain %d CAM index %d\n",
	    controller->index, remote_device->domain->index,
	    remote_device->index
	);

	FUNC4(controller->request_pool, request);
	task_request = (struct ISCI_TASK_REQUEST *)request;

	task_request->parent.remote_device_handle = remote_device->sci_object;
	task_request->ccb = ccb;

	remote_device->is_resetting = TRUE;

	status = (SCI_STATUS) FUNC6(
	    controller->scif_controller_handle, remote_device->sci_object,
	    SCI_CONTROLLER_INVALID_IO_TAG, (void *)task_request,
	    (void *)((char*)task_request + sizeof(struct ISCI_TASK_REQUEST)),
	    &task_request->sci_object);

	if (status != SCI_SUCCESS) {
		FUNC1(controller->scif_controller_handle,
		    remote_device->sci_object, task_request->sci_object,
		    (SCI_TASK_STATUS)status);
		return;
	}

	status = (SCI_STATUS)FUNC5(
	    controller->scif_controller_handle, remote_device->sci_object,
	    task_request->sci_object, SCI_CONTROLLER_INVALID_IO_TAG);

	if (status != SCI_SUCCESS) {
		FUNC1(
		    controller->scif_controller_handle,
		    remote_device->sci_object, task_request->sci_object,
		    (SCI_TASK_STATUS)status);
		return;
	}
}