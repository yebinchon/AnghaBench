
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ISCI_REMOTE_DEVICE {TYPE_2__* domain; } ;
struct TYPE_3__ {int remote_device_handle; } ;
struct ISCI_IO_REQUEST {TYPE_1__ parent; } ;
struct ISCI_CONTROLLER {int lock; } ;
struct TYPE_4__ {struct ISCI_CONTROLLER* controller; } ;


 int isci_remote_device_reset (struct ISCI_REMOTE_DEVICE*,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ sci_object_get_association (int ) ;

void
isci_io_request_timeout(void *arg)
{
 struct ISCI_IO_REQUEST *request = (struct ISCI_IO_REQUEST *)arg;
 struct ISCI_REMOTE_DEVICE *remote_device = (struct ISCI_REMOTE_DEVICE *)
  sci_object_get_association(request->parent.remote_device_handle);
 struct ISCI_CONTROLLER *controller = remote_device->domain->controller;

 mtx_lock(&controller->lock);
 isci_remote_device_reset(remote_device, ((void*)0));
 mtx_unlock(&controller->lock);
}
