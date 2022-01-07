
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_IO_REQUEST {int dummy; } ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_IO_STATUS ;
typedef int SCI_IO_REQUEST_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int isci_io_request_complete (int ,int ,struct ISCI_IO_REQUEST*,int ) ;
 scalar_t__ sci_object_get_association (int ) ;
 int scif_controller_complete_io (int ,int ,int ) ;

void
scif_cb_io_request_complete(SCI_CONTROLLER_HANDLE_T scif_controller,
    SCI_REMOTE_DEVICE_HANDLE_T remote_device,
    SCI_IO_REQUEST_HANDLE_T io_request, SCI_IO_STATUS completion_status)
{
 struct ISCI_IO_REQUEST *isci_request =
     (struct ISCI_IO_REQUEST *)sci_object_get_association(io_request);

 scif_controller_complete_io(scif_controller, remote_device, io_request);
 isci_io_request_complete(scif_controller, remote_device, isci_request,
     completion_status);
}
