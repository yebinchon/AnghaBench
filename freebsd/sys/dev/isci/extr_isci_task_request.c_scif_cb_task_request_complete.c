
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_TASK_STATUS ;
typedef int SCI_TASK_REQUEST_HANDLE_T ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int isci_task_request_complete (int ,int ,int ,int ) ;
 int scif_controller_complete_task (int ,int ,int ) ;

void
scif_cb_task_request_complete(SCI_CONTROLLER_HANDLE_T controller,
    SCI_REMOTE_DEVICE_HANDLE_T remote_device,
    SCI_TASK_REQUEST_HANDLE_T task_request, SCI_TASK_STATUS completion_status)
{

 scif_controller_complete_task(controller, remote_device, task_request);
 isci_task_request_complete(controller, remote_device, task_request,
     completion_status);
}
