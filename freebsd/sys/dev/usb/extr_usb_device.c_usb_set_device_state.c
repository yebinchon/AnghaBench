
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int state; TYPE_2__* bus; } ;
typedef enum usb_dev_state { ____Placeholder_usb_dev_state } usb_dev_state ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {int (* device_state_change ) (struct usb_device*) ;} ;


 int DPRINTF (char*,struct usb_device*,int ,int ) ;
 int KASSERT (int,char*) ;
 int USB_STATE_MAX ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct usb_device*) ;
 int usb_ref_lock ;
 int usb_statestr (int) ;

void
usb_set_device_state(struct usb_device *udev, enum usb_dev_state state)
{

 KASSERT(state < USB_STATE_MAX, ("invalid udev state"));

 DPRINTF("udev %p state %s -> %s\n", udev,
     usb_statestr(udev->state), usb_statestr(state));




 udev->state = state;



 if (udev->bus->methods->device_state_change != ((void*)0))
  (udev->bus->methods->device_state_change) (udev);
}
