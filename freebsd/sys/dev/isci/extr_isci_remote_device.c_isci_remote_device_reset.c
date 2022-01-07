
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct TYPE_6__ {int remote_device_handle; } ;
struct ISCI_TASK_REQUEST {int sci_object; union ccb* ccb; TYPE_3__ parent; } ;
struct ISCI_REQUEST {int dummy; } ;
struct ISCI_REMOTE_DEVICE {scalar_t__ is_resetting; int sci_object; int index; TYPE_2__* domain; int pending_device_reset_element; } ;
struct ISCI_CONTROLLER {int scif_controller_handle; int request_pool; int index; int pending_device_reset_list; } ;
struct TYPE_5__ {int index; struct ISCI_CONTROLLER* controller; } ;
typedef int SCI_TASK_STATUS ;
typedef scalar_t__ SCI_STATUS ;


 int CAM_REQUEUE_REQ ;
 int CAM_STATUS_MASK ;
 int SCI_CONTROLLER_INVALID_IO_TAG ;
 scalar_t__ SCI_SUCCESS ;
 scalar_t__ TRUE ;
 int isci_log_message (int ,char*,char*,int ,int ,int ) ;
 int isci_task_request_complete (int ,int ,int ,int ) ;
 int sci_fast_list_insert_tail (int *,int *) ;
 scalar_t__ sci_pool_empty (int ) ;
 int sci_pool_get (int ,struct ISCI_REQUEST*) ;
 scalar_t__ scif_controller_start_task (int ,int ,int ,int ) ;
 scalar_t__ scif_task_request_construct (int ,int ,int ,void*,void*,int *) ;
 int xpt_done (union ccb*) ;

void
isci_remote_device_reset(struct ISCI_REMOTE_DEVICE *remote_device,
    union ccb *ccb)
{
 struct ISCI_CONTROLLER *controller = remote_device->domain->controller;
 struct ISCI_REQUEST *request;
 struct ISCI_TASK_REQUEST *task_request;
 SCI_STATUS status;

 if (remote_device->is_resetting == TRUE) {

  return;
 }

 if (sci_pool_empty(controller->request_pool)) {





  if (ccb == ((void*)0))
   sci_fast_list_insert_tail(
       &controller->pending_device_reset_list,
       &remote_device->pending_device_reset_element);
  else {
   ccb->ccb_h.status &= ~CAM_STATUS_MASK;
   ccb->ccb_h.status |= CAM_REQUEUE_REQ;
   xpt_done(ccb);
  }
  return;
 }

 isci_log_message(0, "ISCI",
     "Sending reset to device on controller %d domain %d CAM index %d\n",
     controller->index, remote_device->domain->index,
     remote_device->index
 );

 sci_pool_get(controller->request_pool, request);
 task_request = (struct ISCI_TASK_REQUEST *)request;

 task_request->parent.remote_device_handle = remote_device->sci_object;
 task_request->ccb = ccb;

 remote_device->is_resetting = TRUE;

 status = (SCI_STATUS) scif_task_request_construct(
     controller->scif_controller_handle, remote_device->sci_object,
     SCI_CONTROLLER_INVALID_IO_TAG, (void *)task_request,
     (void *)((char*)task_request + sizeof(struct ISCI_TASK_REQUEST)),
     &task_request->sci_object);

 if (status != SCI_SUCCESS) {
  isci_task_request_complete(controller->scif_controller_handle,
      remote_device->sci_object, task_request->sci_object,
      (SCI_TASK_STATUS)status);
  return;
 }

 status = (SCI_STATUS)scif_controller_start_task(
     controller->scif_controller_handle, remote_device->sci_object,
     task_request->sci_object, SCI_CONTROLLER_INVALID_IO_TAG);

 if (status != SCI_SUCCESS) {
  isci_task_request_complete(
      controller->scif_controller_handle,
      remote_device->sci_object, task_request->sci_object,
      (SCI_TASK_STATUS)status);
  return;
 }
}
