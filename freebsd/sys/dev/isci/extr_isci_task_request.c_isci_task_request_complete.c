
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
union ccb {TYPE_2__ ccb_h; } ;
struct ISCI_TASK_REQUEST {union ccb* ccb; } ;
struct ISCI_REQUEST {int dummy; } ;
struct ISCI_REMOTE_DEVICE {TYPE_1__* domain; scalar_t__ is_resetting; } ;
struct ISCI_CONTROLLER {scalar_t__ is_frozen; int pending_device_reset_list; int request_pool; int sim; int fail_on_task_timeout; } ;
struct TYPE_3__ {int sci_object; } ;
typedef scalar_t__ SCI_TASK_STATUS ;
typedef int SCI_TASK_REQUEST_HANDLE_T ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef scalar_t__ BOOL ;


 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int isci_log_message (int ,char*,char*,...) ;
 int isci_remote_device_release_device_queue (struct ISCI_REMOTE_DEVICE*) ;
 int isci_remote_device_reset (struct ISCI_REMOTE_DEVICE*,union ccb*) ;
 struct ISCI_REMOTE_DEVICE* sci_fast_list_remove_head (int *) ;
 scalar_t__ sci_object_get_association (int ) ;
 int sci_pool_put (int ,struct ISCI_REQUEST*) ;
 int scif_cb_domain_device_removed (int ,int ,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_release_simq (int ,scalar_t__) ;

void
isci_task_request_complete(SCI_CONTROLLER_HANDLE_T scif_controller,
    SCI_REMOTE_DEVICE_HANDLE_T remote_device,
    SCI_TASK_REQUEST_HANDLE_T task_request, SCI_TASK_STATUS completion_status)
{
 struct ISCI_TASK_REQUEST *isci_task_request =
  (struct ISCI_TASK_REQUEST *)sci_object_get_association(task_request);
 struct ISCI_CONTROLLER *isci_controller =
  (struct ISCI_CONTROLLER *)sci_object_get_association(scif_controller);
 struct ISCI_REMOTE_DEVICE *isci_remote_device =
  (struct ISCI_REMOTE_DEVICE *)sci_object_get_association(remote_device);
 struct ISCI_REMOTE_DEVICE *pending_remote_device;
 BOOL retry_task = FALSE;
 union ccb *ccb = isci_task_request->ccb;

 isci_remote_device->is_resetting = FALSE;

 switch ((int)completion_status) {
 case 128:
 case 131:
  break;

 case 133:
  retry_task = TRUE;
  isci_log_message(0, "ISCI",
      "task failure (invalid state) - retrying\n");
  break;

 case 135:
  retry_task = TRUE;
  isci_log_message(0, "ISCI",
      "task failure (insufficient resources) - retrying\n");
  break;

 case 138:
  if (isci_controller->fail_on_task_timeout) {
   retry_task = FALSE;
   isci_log_message(0, "ISCI",
       "task timeout - not retrying\n");
   scif_cb_domain_device_removed(scif_controller,
       isci_remote_device->domain->sci_object,
       remote_device);
  } else {
   retry_task = TRUE;
   isci_log_message(0, "ISCI",
       "task timeout - retrying\n");
  }
  break;

 case 137:
 case 129:
 case 132:
 case 136:
 case 130:
 case 134:
  isci_log_message(0, "ISCI",
      "unhandled task completion code 0x%x\n", completion_status);
  break;

 default:
  isci_log_message(0, "ISCI",
      "unhandled task completion code 0x%x\n", completion_status);
  break;
 }

 if (isci_controller->is_frozen == TRUE) {
  isci_controller->is_frozen = FALSE;
  xpt_release_simq(isci_controller->sim, TRUE);
 }

 sci_pool_put(isci_controller->request_pool,
     (struct ISCI_REQUEST *)isci_task_request);




 isci_remote_device_release_device_queue(isci_remote_device);

 if (retry_task == TRUE)
  isci_remote_device_reset(isci_remote_device, ccb);
 else {
  pending_remote_device = sci_fast_list_remove_head(
      &isci_controller->pending_device_reset_list);

  if (pending_remote_device != ((void*)0)) {







   isci_remote_device_reset(pending_remote_device, ((void*)0));
  } else if (ccb != ((void*)0)) {



   ccb->ccb_h.status &= ~CAM_STATUS_MASK;
   ccb->ccb_h.status |= CAM_REQ_CMP;
   xpt_done(ccb);
  }
 }
}
